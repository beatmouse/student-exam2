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
                pip install -e '.[test]'
                coverage run -m pytest
                coverage report


            }
        }
   
   }
}
