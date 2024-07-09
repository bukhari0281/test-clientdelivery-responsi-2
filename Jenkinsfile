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
                sh 'docker build -t bukhari0281/chatresponsi2:1.0.2 .'
            }
        }
        stage('Run Image') { 
            steps {
                sh 'docker run -d -p 3003:3000 bukhari0281/chatresponsi2:1.0.2'
            }
        }
        stage('Push Image') { 
            steps {
                sh 'docker push bukhari0281/chatresponsi2:1.0.2'
            }
        }
    }
}