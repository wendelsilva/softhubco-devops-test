pipeline {
    agent any

    stages {
        stage('Compile App Code') {
            steps {
                sh 'echo "Compilando codigo da aplicação"'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'echo "Executando o comando docker build"'
            }
        }
        stage('Push Docker Image') {
            steps {
                sh 'echo "Executando o comando docker push"'
            }
        }
        stage('Deploy no Kubernetes') {
            steps {
                sh 'echo "Executando o comando kubectl apply"'
            }
        }
    }
}