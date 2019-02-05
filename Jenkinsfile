pipeline {
   
agent() 
                    
   stages {
       stage('Test') {
            steps {
                sh 'pip install -e \'.[test]\''
                coverage run -m pytest
                coverage report

            }
        }
    }
}
