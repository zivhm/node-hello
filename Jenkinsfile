pipeline {
  agent {
    node {
      label 'docker'
    }

  }
  stages {
    stage('checkout code') {
      steps {
        git(url: 'https://github.com/lidorg-dev/node-hello.git', branch: 'master', credentialsId: 'github', poll: true, changelog: true)
      }
    }

    stage('build dockerfile') {
      steps {
        sh "docker build -t lidorlg/blue-ocean:${env.BUILD_NUMBER} ."
      }
    }

    stage('test the container') {
      steps {
        sh "docker run -itd --name blue-ocean -p 3000:3000 lidorlg/blue-ocean:${env.BUILD_NUMBER}"
        sh 'sleep 5'
        sh 'curl localhost:3000'
        sh 'docker stop blue-ocean && docker rm blue-ocean'
      }
    }

    stage('push to dockerhub') {
      steps {
        withCredentials(bindings: [usernamePassword(credentialsId: 'docker-hub', usernameVariable: 'user', passwordVariable: 'pass')]) {
          sh 'docker login -u $user -p $pass'
          sh "docker push blue-ocean:${env.BUILD_NUMBER}"
        }

      }
    }

  }
}