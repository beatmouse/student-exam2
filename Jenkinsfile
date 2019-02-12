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
               withDockerRegistry([ credentialsId: "803422fb-a8b3-46cf-95d8-072f1e455b4f", url: "" ]) {
               sh 'docker push beatmouse/app:latest'
              }            
            }
      } 
   }
}
