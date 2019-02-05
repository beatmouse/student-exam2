pipeline {
   
agent any
                    
   stages {
       stage('Clone') {
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
        
      
      
   }
}
