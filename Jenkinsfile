pipeline{
  agent any
  stages{
    stage("git checkout"){
      steps{
            git branch:'main', credentialsId: 'github-creds', url: 'https://github.com/greeshmagit/helloworld.git'
            }
    }
    stage("docker build"){
      steps{
               sh "docker build -t sh  pgreeshma/welpython:v1 -f helloworld/Dockerfile .
      }
    }
  }
} 
 
