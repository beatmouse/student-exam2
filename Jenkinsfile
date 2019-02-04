pipeline {
   
agent() { dockerfile true }
     
   // def workspace = pwd()
   //def buildNumber = env.BUILD_NUMBER
   //echo "workspace directory is ${workspace}"
   //echo "build URL is ${env.BUILD_URL}"
   //sh 'cd ${workspace}'
               
   stages {
       stage('Test') {
            steps {
                echo "I am in your container"
            }
        }
    }
}
