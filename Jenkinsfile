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
                sh 'pip3.6 install -e \'.[test]\''
                             
            }
        }
   
   
   }
}
