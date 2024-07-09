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
                sh 'sudo npm install'
                sh 'sudo install sqlite sqlite3'
                sh 'node index.js'
            }
        } 
    }
}