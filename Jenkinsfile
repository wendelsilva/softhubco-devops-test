pipeline {
    agent { label 'jenkins-agent' }

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    django_crm_app = docker.build("softhubco/django_crm:${env.BUILD_ID}", "-f ./django_crm/Dockerfile django_crm", )
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry("https://registry.hub.docker.com", "dockerhub") {
                        django_crm_app.push("latest")
                        django_crm_app.push("${env.BUILD_ID}")
                    }
                }
            }
        }
        stage('Deploy no Kubernetes') {
            steps {
                sh 'echo "Executando o comando kubectl apply"'
            }
        }
    }
}