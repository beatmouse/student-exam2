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
                sh 'script: pip install -e \'.[test]\''
                             
            }
        }
   
   
   }
}
