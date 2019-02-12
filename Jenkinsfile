pipeline {
   
agent any
                    
   stages {
       stage('Checkout scm') {
            steps {
                checkout scm
            }
        }
  
      
       stage('Test') {
            steps {
                sh 'pip3 install -e \'.[test]\' && coverage run -m pytest && coverage report'          
            }
        }
   
      stage('Build') {
            steps {
              sh 'docker build --tag beatmouse/app .'
              }            
            }
        
      stage('Publish') {
            steps {
               withDockerRegistry([ credentialsId: "79bd83bb-4435-4060-be7b-a5620bd831a9", url: "" ]) {
               sh 'docker push beatmouse/app:latest'
              }            
            }
      } 
   }
}
