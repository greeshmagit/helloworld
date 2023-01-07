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
            sshagent(['tomcat']) {
                         sh "ssh -o StrictHostkeyChecking=no ec2-user@172.31.34.138 docker rm -f tomcat"
                         /*sh "ssh -o StrictHostkeyChecking=no ec2-user@172.31.34.138 docker image prune -a"*/
              sh "ssh -o StrictHostkeyChecking=no ec2-user@172.31.34.138 docker rmi -f ${docker images -q -f dangling=true}
                         sh "ssh -o StrictHostkeyChecking=no ec2-user@172.31.34.138 docker run -d -p 8081:8080 --name tomcat pgreeshma/welpython:v1"
             }
               
         }
    }
      
  }
} 
 
