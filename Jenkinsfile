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
               withDockerRegistry([ credentialsId: "83e35e74-9f7a-499e-b1ed-b4b47846f421", url: "" ]) {
               sh 'docker push beatmouse/app:latest'
              }            
            }
      } 
   }
}
