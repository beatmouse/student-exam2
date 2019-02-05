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
                sh 'pip install -e \'.[test]\''
                             
            }
        }
   
   
   }
}
