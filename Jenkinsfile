pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'npm install'
                sh 'npm  install sqlite sqlite3'
            }
        } 
        stage('Build image') {
            steps {
                sh 'docker build -t chatresponsi2:1.0.1 .'
            }
        }
    }
}