pipeline {
  agent any

  options {
    timestamps()
    timeout(time: 20, unit: 'MINUTES')
    disableConcurrentBuilds()
  }

  environment {
    NODE_VERSION   = '24'
    PYTHON_VERSION = '3.12'
  }

  stages {
    stage('Setup') {
      steps {
        sh '''
          set -euo pipefail

          # Install buf CLI
          if ! command -v buf &>/dev/null; then
            curl -fsSL https://github.com/bufbuild/buf/releases/latest/download/buf-Linux-$(uname -m) -o "$HOME/.local/bin/buf"
            chmod +x "$HOME/.local/bin/buf"
          fi

          # JavaScript test deps
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
        sh 'cd gen/js && npm test'
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
      echo 'Pipeline failed — check buf generate output and test results above.'
    }
  }
}
