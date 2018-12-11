properties([pipelineTriggers([githubPush()])])

pipeline {
    agent { node { label 'linux' } }
	stages {
		stage('Setup') {    
			steps {
				sh 'aws s3 cp s3://seis665/dynacorp/webapp.zip /webapp'
				unzip dir: '/webapp', glob: '', zipFile: 'webapp'
			}
		}
		
		
	}
}
