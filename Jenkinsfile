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

    stage('install node and build app &test') {
      steps {
        sh '''curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash 
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \\. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install 10
node -v
npm -v
npm install
node index.js &
sleep 60
curl localhost:3000'''
      }
    }

    stage('archive artifact') {
      steps {
        archiveArtifacts '*'
      }
    }

  }
}