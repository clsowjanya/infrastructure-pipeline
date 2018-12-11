properties([pipelineTriggers([githubPush()])])

pipeline {
    agent { node { label 'linux' } }
	stages {
		stage('Setup') {    
			steps {
				sh 'aws s3 cp https://s3.amazonaws.com/seis665/dynacorp/webapp.zip /webapp'
				
			}
		}
				
	}	
}
