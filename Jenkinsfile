pipeline {
  agent {
    node {
      label 'jenkins-docker-slave'
    }

  }
  stages {
    stage('checkout-code') {
      steps {
        sh 'echo "hello world 1"'
      }
    }

    stage('build') {
      steps {
        sh 'echo "Build"'
      }
    }

  }
}