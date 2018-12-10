properties([pipelineTriggers([githubPush()])])
node('linux') {
    git url: 'https://github.com/clsowjanya/infrastructure-pipeline.git', branch: 'master'
    stage('Test') {
        sh "env"
    }
    stage('GetInstances') {
        sh "aws ec2 describe-instances --region us-east-1"
        
       
    }
    stage('CreateInstance') {
        sh "aws ec2 run-instances --image-id ami-013be31976ca2c322 --count 1 --instance-type t2.micro --key-name seis665-leela-virginia-key --security-group-ids sg-1a679c55 --subnet-id subnet-0ff71a3a6b7f373bb --region us-east-1"
    }
    
}
