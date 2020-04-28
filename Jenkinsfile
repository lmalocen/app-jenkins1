pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'sudo docker build -t app:test .'
      }
    }

    stage('Test') {
      steps {
        echo 'TEST'
        sh ' /bin/nc -vc localhost 22'
        sh ' /bin/nc -vc localhost 80'
      }
    }
   stage('Push Registry') {
      steps {
        sh 'docker tag app:test app:stable'
        sh 'docker push app:test app:stable'
      }
    }
  }
}
