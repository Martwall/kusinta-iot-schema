pipeline {
  agent { label 'nodejs' }

  options {
    timestamps()
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
            url: 'https://github.com/Martwall/kusinta-iot-schema.git',
            credentialsId: 'iot-schema-github-pat'
          ]]
        ])
      }
    }

    stage('Setup') {
      steps {
        sh '''
          set -euo pipefail

          # Install buf CLI if not present on the agent
          if ! command -v buf &>/dev/null; then
            curl -fsSL https://github.com/bufbuild/buf/releases/latest/download/buf-Linux-$(uname -m) -o "$HOME/.local/bin/buf"
            chmod +x "$HOME/.local/bin/buf"
          fi

          . "$NVM_DIR/nvm.sh"
          nvm use 24
          cd gen/js && npm ci
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
          pip3 install --quiet -e ".[dev]"
          python3 -m pytest tests/ -v
        '''
      }
    }

    stage('Tag Release') {
      when { branch 'main' }
      steps {
        withCredentials([usernamePassword(credentialsId: 'iot-schema-github-pat', usernameVariable: 'GIT_USER', passwordVariable: 'GIT_TOKEN')]) {
          sh '''
            git remote set-url origin https://${GIT_USER}:${GIT_TOKEN}@github.com/Martwall/kusinta-iot-schema.git
            VERSION=$(cat VERSION)
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
  }

  post {
    failure {
      echo 'Pipeline failed — check buf generate output and test results above.'
    }
  }
}
