pipeline {
   
agent any
                    
   stages {
       stage('Clone') {
            steps {
                checkout scm
            }
        }
  
      
   stages {
       stage('Test') {
            steps {
                sh 'pip install -e \'.[test]\''
                sh 'coverage run -m pytest'
                sh 'coverage report'
            }
        }
   
   }
}
