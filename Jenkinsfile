properties([pipelineTriggers([githubPush()])])

pipeline {
    agent { node { label 'linux' } }
	stages {
		stage('Setup') {    
			steps {
				sh 'aws s3 cp s3://seis665/dynacorp/webapp.zip /webapp'
				unzip dir: '', glob: '', zipFile: 'webapp'
			}
		}
		stage('Build') {
	         		steps {
					sh 'docker build -t dynacorpweb:${BUILD_NUMBER} .'
            			}
        	}
		
	}
}
