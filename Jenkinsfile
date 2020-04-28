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
        sh ' /bin/nc -vz localhost 22'
      }
    }
   stage('Push Registry') {
      steps {
        sh 'sudo docker tag app:test app:stable'
        sh 'sudo docker push lmalocen/app:stable'
      }
    }
  }
}
