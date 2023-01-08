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
    stage ('Build') {
     steps {
        bat 'mvn clean install'
      }
     }
    stage ('Sonar') {
     steps {
     //script {
       //withSonarQubeEnv() {
             bat 'mvn clean package sonar:sonar'
	 //    }
	   // }
     }
    }
    //stage ('Quality Gates') {
     //steps {
       //waitForQualityGate abortPipeline: True
     //}
   // }

  }
}
