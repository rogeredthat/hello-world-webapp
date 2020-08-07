pipeline {
  agent any
  tools {
    dockerTool "docker"   
  }
  stages {
    stage('build') {
      steps {
        sh 'pip install -r requirements.txt'
      }
    }
    stage('test') {
      steps {
        sh 'python app.py'
      }   
    }
    stage('Deploy') {
      steps {
        script {
          withDockerRegistry(
            credentialsId: 'd7fbe452-b614-4dd9-ae88-fc24dfafae7e',
            toolName: 'docker') {
            
            // Build and Push
            def dockerImage = docker.build("rogeredthat/hello-world-webapp");
            dockerImage.push();
          }
        }
      }
    }
  }
}