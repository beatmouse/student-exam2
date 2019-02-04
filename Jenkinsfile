//Jenkinsfile (Declarative Pipeline)

pipeline {
    agent { dockerfile true }
    // docker {
       // image ‘tes1app’
          //  args  ‘-v /var/run/docker.sock:/var/run/docker.sock’  
      
        // }
    stages {
        stage('Test') {
            steps {
                echo "I am in your container"
            }
        }
    }
}
