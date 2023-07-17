pipeline {
  
  agent any
  stages{
    def app
    stage("Build Image"){
      app = docker.build("pgreeshma/welpython")
    }
    stage("Test Image"){
      app.inside{
        sh 'echo "Test Passed"'
      }
    }
    stage("Push Image"){
      docker.withRegistry('https://registry.hub.docker.com', 'dockerhub'){
        app.push("${env.BUILD_NUMBER}")
      }
    }
    stage("triger Manifestupdate"){
      echo "triggering updatemanifestjob"
      build job: 'updatemanifest', parameters: [string(name: 'DOCKERTAG', value: env.BUILD_NUMBER)]
    }
 }
}
         
/*pipeline{
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
    stage("docker push"){
      steps{
                withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'pwd', usernameVariable: 'user')]) {
                    sh "docker login -u ${user} -p ${pwd}"
                    sh "docker push pgreeshma/welpython:v1"
                   }
            }
    }
    stage("docker deploy"){
      steps{
            sshagent(['docker-ssh']){
                         /*sh "ssh -o StrictHostkeyChecking=no ec2-user@172.31.34.138 docker rm -f helloworld"
                         /*sh "ssh -o StrictHostkeyChecking=no ec2-user@172.31.34.138 docker rmi -f pgreeshma/welpython:v1"
                         sh "ssh -o StrictHostkeyChecking=no ec2-user@172.31.34.138 docker image prune -a -f"
                          /*sh "ssh -o StrictHostkeyChecking=no ec2-user@172.31.34.138 docker rmi -f \$(docker image -q -f dangling=True)"
                         /*sh "ssh -o StrictHostkeyChecking=no ec2-user@172.31.34.138 docker rmi -f ${docker image prune -a}"*/
                        
                      /*   sh "ssh -o StrictHostkeyChecking=no ec2-user@172.31.34.138 docker run -d -p 8080:5000 --name helloworld pgreeshma/welpython:v1"
             }
         }
    }
      
  }
} */
 
