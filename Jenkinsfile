pipeline {
  agent {
    docker {
      image 'maven:3.3.3'
    }

  }
  stages {
    stage('Inicio') {
      steps {
        echo 'Hola de stage Inicio'
      }
    }

    stage('Test2') {
      steps {
        echo 'TEst2'
      }
    }

  }
}