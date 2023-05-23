pipeline {
  agent {
    node {
      label 'docker'
    }

  }
  stages {
    stage('checkout code') {
      steps {
        git(url: 'https://github.com/lidorg-dev/node-hello.git', branch: 'master')
      }
    }

    stage('build dockerfile') {
      steps {
        echo 'hello from build docker file'
      }
    }

    stage('test the container') {
      steps {
        echo 'test the container'
      }
    }

    stage('push to dockerhub') {
      steps {
        echo 'push to docker hub'
      }
    }

  }
}