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
   /*stage('Nexus artificats uploader') {
     steps {
       script {
         nexusArtifactUploader artifacts: [[artifactId: 'helloworld', classifier: '', file: 'target/helloworld-1.1.jar', type: 'jar']], credentialsId: 'nexus', groupId: 'com.coveros.demo', nexusUrl: 'localhost:8081/nexus/', nexusVersion: 'nexus2', protocol: 'http', repository: 'Maven_Release', version: '1.1'
       }
     }
    } */

  }
}
