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
        sh '''curl -O https://nodejs.org/dist/v10.24.1/node-v10.24.1-linux-x64.tar.xz
tar -xJvf node-v10.24.1-linux-x64.tar.xz node/
ls node/

'''
      }
    }

    stage('build node package') {
      steps {
        sh './node/bin/npm install'
      }
    }

  }
}