@Library('Shared-Library')_
pipeline {
    agent any
    environment {
        dockerHubCredentialsID	    = 'DockerHub'  		    			// DockerHub credentials ID.
        imageName   		    = 'norhanhatem0187/final-project'     			// DockerHub repo/image name.
            }

    stages {
        
        stage('Repo Checkout') {
            steps {
			echo "$GIT_BRANCH"
            }
        }

        stage('Run Unit Test') {
            steps {
                script {
                	 
                		UnitTest()
            	
        	}
    	    }
	}

	//   stage('Run SonarQube Test') {
        //    steps {
        //        script {
          //          	
            //        		SonarQubeTest()
                    
            //    }
        //    }
       // }
	
       

        stage('Build Docker Image') {
           steps {
               script {
           
                              
                               BuildandPush("${dockerHubCredentialsID}", "${imageName}")
                    
               }
            }
        }
    

    stage('Deploy on OpenShift Cluster') {
            steps {
                script { 
                	dir('openshift') {
				Deploy("${imageName}")
                    	}
                }
            }
        }

}
    post {
        success {
            echo "${JOB_NAME}-${BUILD_NUMBER} pipeline succeeded"
        }
        failure {
            echo "${JOB_NAME}-${BUILD_NUMBER} pipeline failed"
        }
    }
}
