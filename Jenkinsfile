pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        } 
        stage('Build image') {
            steps {
                sh 'docker build -t chatresponsi2:1.0.1 .'
            }
        }
        stage('Run Image') { 
            steps {
                sh 'docker run -d -p 3002:3000 chatresponsi2:1.0.1'
            }
        }
        stage('Push Image') { 
            steps {
                sh 'docker push bukhari0281/chatresponsi2:1.0.1'
            }
        }
    }
}