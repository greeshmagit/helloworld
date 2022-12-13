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
               sh "docker build -t pgreeshma/welpython:v1 ."
           }
    }
    stage("docker push to nexus repo"){
      steps{
                withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'pwd', usernameVariable: 'user')]) {
                    sh "docker login -u ${user} -p ${pwd}"
                    sh "docker push pgreeshma/welpython:v1"
                   }
            }
    }
    stage("docker deploy to tomcat"){
      steps{
            sshagent(['Docker_creds']) {
                         sh "ssh -o StrictHostkeyChecking=no ec2-user@172.31.36.29 docker rm -f tomcat"
                         sh "ssh -o StrictHostkeyChecking=no ec2-user@172.31.36.29 docker run -d -p 8080:8080 --name tomcat pgreeshma/welpython:v1"
             }
               
         }
    }
      
  }
} 
 
