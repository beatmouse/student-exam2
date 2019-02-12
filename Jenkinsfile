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
               withDockerRegistry([ credentialsId: "2512a90e-d0f2-4035-aa8f-4c7defb983c7", url: "" ]) {
               sh 'docker push beatmouse/app:latest'
              }            
            }
      } 
   }
}
