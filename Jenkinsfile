pipeline {
  agent {
    node {
      label 'jenkins-docker-slave'
    }

  }
  stages {
    stage('checkout-code') {
      steps {
        git(url: 'https://github.com/lidorg-dev/node-hello.git', branch: 'master', changelog: true, poll: true)
      }
    }

    stage('install node v10') {
      steps {
        sh '''curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash 
nvm install 10
node -v
npm -v
'''
      }
    }

    stage('build node package') {
      steps {
        sh 'npm install'
      }
    }

  }
}