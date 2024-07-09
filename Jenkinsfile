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
                sh 'node index.js'
            }
        } 
    }
}