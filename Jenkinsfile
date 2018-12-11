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
		stage('Deploy DB') {
			steps {
				echo 'Deploying DB Stage....'
				withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'jenkins-aws', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
					sh("aws cloudformation create-stack --region us-east-1 --stack-name dynacorp-database --template-body dynamodb.yaml")
				}
			}
 	    }
		
		
	}	
}
