pipeline {
  agent any

  options {
    timestamps()
    timeout(time: 20, unit: 'MINUTES')
    disableConcurrentBuilds()
  }

  environment {
    PROTOC_VERSION = '27.3'
    NODE_VERSION   = '24'
    PYTHON_VERSION = '3.12'
  }

  stages {
    stage('Setup') {
      steps {
        sh '''
          set -euo pipefail

          # Install protoc if not present or wrong version
          if ! protoc --version 2>/dev/null | grep -q "${PROTOC_VERSION}"; then
            ARCH=$(uname -m)
            case "$ARCH" in
              x86_64)  ZIP="protoc-${PROTOC_VERSION}-linux-x86_64.zip" ;;
              aarch64) ZIP="protoc-${PROTOC_VERSION}-linux-aarch_64.zip" ;;
              *) echo "Unsupported arch: $ARCH"; exit 1 ;;
            esac
            curl -fsSL "https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOC_VERSION}/${ZIP}" -o /tmp/protoc.zip
            unzip -q /tmp/protoc.zip -d "$HOME/.local"
            chmod +x "$HOME/.local/bin/protoc"
          fi

          # Install buf CLI
          if ! command -v buf &>/dev/null; then
            curl -fsSL https://github.com/bufbuild/buf/releases/latest/download/buf-Linux-$(uname -m) -o "$HOME/.local/bin/buf"
            chmod +x "$HOME/.local/bin/buf"
          fi

          # Node deps (includes ts-proto)
          npm install -g ts-proto

          # TypeScript deps
          cd gen/ts && npm ci

          # Python grpcio-tools
          pip3 install --quiet grpcio-tools
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
        sh 'bash generate.sh'
      }
    }

    stage('Test TypeScript') {
      steps {
        sh 'cd gen/ts && npm test'
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

    stage('Commit Generated') {
      when { branch 'main' }
      steps {
        sh '''
          git config user.email "jenkins@kusinta.com"
          git config user.name "Jenkins"
          git add gen/
          if git diff --cached --quiet; then
            echo "No generated file changes to commit."
          else
            git commit -m "chore: regenerate [skip ci]"
            git push origin main
          fi
        '''
      }
    }

    stage('Tag Release') {
      when { branch 'main' }
      steps {
        sh '''
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

  post {
    failure {
      echo 'Pipeline failed — check generate.sh output and test results above.'
    }
  }
}
