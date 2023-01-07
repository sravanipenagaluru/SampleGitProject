pipeline {
  
  agent any
   
  stages {
    stage('Git Checkout') {
      steps {
      git branch: 'main', url: 'https://github.com/sravanipenagaluru/SampleGitProject.git'
    }
   }
    stage ('Unit Testing') {
       steps {
         bat 'mvn test'
       }
    }
    stage ('Integration testing') {
      steps {
        bat 'mvn verify -DskipUnitTests'
      }
    }
  }
}
