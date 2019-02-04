//Jenkinsfile (Declarative Pipeline)

//pipeline {
   
//node() { dockerfile true }
   //def workspace = env.WORKSPACE
node(){
    //now you are on slave labeled with 'label'
   
    def workspace = pwd()
    //def buildNumber = env.BUILD_NUMBER
    echo "workspace directory is ${workspace}"
    //echo "build URL is ${env.BUILD_URL}"
    
    sh 'cd ${workspace}'
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
