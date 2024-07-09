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
        stage('Deploy') {
            steps {
                script {
                    def dockerImage = docker.image("chatresponsi2:1.0.1")
                    dockerImage.withRun('-p 3000:3000') { container ->
                        // Tunggu hingga aplikasi siap di container
                        sh 'echo "Waiting for application to start..."'
                        sh 'sleep 10' // Contoh waktu tunggu (sesuaikan jika perlu)
                        // Atau gunakan cara yang lebih baik untuk memeriksa kesiapan aplikasi

                        // Tambahkan perintah atau skrip untuk deployment ke server
                        sh 'echo "Deploying to server..."'
                        // Misalnya, menggunakan SSH untuk menyalin file atau menjalankan perintah di server
                    }
                }
            }
        }
    }
}