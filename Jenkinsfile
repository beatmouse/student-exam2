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
      agent {
         docker {
            image 'beatmouse:app'
              }            
            }
        }
      
      
   }
}
