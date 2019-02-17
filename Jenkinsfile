pipeline {
    agent {
        docker {
	    image 'tomcat:9.0.1-jre8-alpine'
	    args '-p 8888:8080'
        }
    }
    stages {
        stage('Build') {
            steps {
		sh 'cp ./webapp /usr/local/tomcat/webapps/webapp'
		sh 'catalina.sh run' 
            }
        }
        stage('Test') {
            steps {
		echo "Test the website : http://localhost:8888/myWeb"
            }
            post {
                always {
			echo "http://localhost:8888/myWeb"
                }
            }
        }
        stage('Deliver') {
            steps {
		echo "http://localhost:8888/myWeb"
            }
        }
    }
}
