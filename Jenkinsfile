pipeline {
  agent { label 'nodejs' }

  options {
    timeout(time: 20, unit: 'MINUTES')
    disableConcurrentBuilds()
  }

  environment {
    NVM_DIR = "${env.HOME}/.nvm"
  }

  stages {
    stage('Checkout') {
      steps {
        checkout([
          $class: 'GitSCM',
          branches: [[name: env.BRANCH_NAME ?: env.TAG_NAME]],
          userRemoteConfigs: [[
            url: 'https://github.com/Martwall/kusinta-iot-schema.git'
          ]]
        ])
      }
    }

    stage('Setup') {
      steps {
        sh '''
          . "$NVM_DIR/nvm.sh"
          nvm use 24
          cd gen/js && npm ci
        '''
      }
    }

    stage('Version check') {
      steps {
        sh '''
          VERSION=$(python3 -c "import json; print(json.load(open('gen/js/package.json'))['version'])")
          grep -q "^version = \\"$VERSION\\"" gen/python/pyproject.toml || { echo "gen/python/pyproject.toml version does not match gen/js/package.json ($VERSION)"; exit 1; }
          grep -q "^version: $VERSION" gen/dart/pubspec.yaml            || { echo "gen/dart/pubspec.yaml version does not match gen/js/package.json ($VERSION)"; exit 1; }
          echo "All versions match: $VERSION"
        '''
      }
    }

    stage('Lint') {
      steps {
        sh 'buf lint'
      }
    }

    stage('Breaking Check') {
      when { not { branch 'main' } }
      steps {
        sh 'buf breaking --against ".git#branch=main"'
      }
    }

    stage('Generate') {
      steps {
        sh 'buf generate'
        // Dart is generated separately: it needs --include-imports --include-wkt
        // to emit well-known types locally (protobuf ^4.x doesn't bundle them).
        sh 'buf generate --template buf.gen.dart.yaml --include-imports --include-wkt'
        // The Dart leg barrels are derived from what buf just emitted, so a new
        // proto reaches them without anyone remembering to edit a list.
        sh 'python3 gen-dart-barrels.py'
      }
    }

    stage('Test JavaScript') {
      steps {
        sh '''
          . "$NVM_DIR/nvm.sh"
          nvm use 24
          cd gen/js && npm test
        '''
      }
    }

    stage('Test Python') {
      steps {
        sh '''
          cd gen/python
          python3 -m venv .venv
          . .venv/bin/activate
          pip install --quiet -e ".[dev]"
          python3 -m pytest tests/ -v
        '''
      }
    }

    // The Dart package is consumed by git tag rather than a registry, so nothing
    // downstream compiles it before a release goes out. `dart analyze` is what
    // catches a generated tree that does not build — an ambiguous export across
    // the leg barrels, most of all, which is invisible to buf and to the JS and
    // Python suites.
    stage('Analyze Dart') {
      steps {
        sh '''
          cd gen/dart
          dart pub get
          dart analyze
        '''
      }
    }

    stage('Tag Release') {
      when { branch 'main' }
      steps {
        withCredentials([usernamePassword(credentialsId: 'iot-schema-github-pat', usernameVariable: 'GIT_USER', passwordVariable: 'GIT_TOKEN')]) {
          sh '''
            git remote set-url origin https://${GIT_USER}:${GIT_TOKEN}@github.com/Martwall/kusinta-iot-schema.git
            VERSION=$(python3 -c "import json; print(json.load(open('gen/js/package.json'))['version'])")
            TAG="v${VERSION}"
            if git rev-parse "$TAG" >/dev/null 2>&1; then
              echo "Tag $TAG already exists — skipping."
            else
              git tag "$TAG"
              git push origin "$TAG"
              echo "Tagged $TAG"
            fi
          '''
        }
      }
    }

    stage('Publish npm') {
      when { branch 'main' }
      steps {
        withCredentials([string(credentialsId: 'npm-kusinta-iot-schema-token', variable: 'NPM_KUSINTA_IOT_SCHEMA_TOKEN')]) {
          sh '''
            . "$NVM_DIR/nvm.sh"
            nvm use 24
            VERSION=$(python3 -c "import json; print(json.load(open('gen/js/package.json'))['version'])")
            if npm view "@kusinta/iot-schema@${VERSION}" version >/dev/null 2>&1; then
              echo "@kusinta/iot-schema@${VERSION} already published — skipping."
            else
              echo '//registry.npmjs.org/:_authToken=${NPM_KUSINTA_IOT_SCHEMA_TOKEN}' > gen/js/.npmrc
              cd gen/js && npm publish --access public --tag latest
              echo "Published @kusinta/iot-schema@${VERSION}"
            fi
          '''
        }
      }
    }

    stage('Publish PyPI') {
      when { branch 'main' }
      steps {
        withCredentials([string(credentialsId: 'pypi-kusinta-iot-schema-token', variable: 'PYPI_TOKEN')]) {
          sh '''
            cd gen/python
            python3 -m venv .venv-publish
            . .venv-publish/bin/activate
            pip install --quiet build twine
            rm -rf dist
            python3 -m build
            TWINE_USERNAME=__token__ TWINE_PASSWORD="$PYPI_TOKEN" \
              twine upload --skip-existing dist/*
          '''
        }
      }
    }
  }

  post {
    always {
      sh 'rm -f gen/js/.npmrc'
      sh 'rm -rf gen/python/dist gen/python/.venv-publish'
    }
    failure {
      echo 'Pipeline failed — check buf generate output and test results above.'
    }
  }
}
