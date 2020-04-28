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
        sh 'sudo docker run --rm --name app -id -p 80:80 app:test'
        sh '/bin/nc -vz localhost 80'
      }
    post {
        always {
            sh 'sudo docker container stop app'
        }
    }
    }
   stage('Push Registry') {
      steps {
        withCredentials([usernamePassword(credentialsId: '19be14b7-be3d-4a77-9b78-97f6dbd8db74', passwordVariable: 'password', usernameVariable: 'user')]) {
	  sh 'sudo docker tag app:test lmalocen/app:stable'
          sh 'sudo docker push lmalocen/app:stable'
	}
      }
    }
  }
}
