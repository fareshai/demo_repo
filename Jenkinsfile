pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "largest-number-app"
    }

    stages {
        stage('Clone Repository') {
            steps {
                echo 'Cloning repository...'
                // Assuming the code and Dockerfile are stored in a Git repository
                git branch: 'main', url: 'https://github.com/fareshai/demo_repo.git'
            }
        }
        stage('Build Go Program') {
            steps {
                echo 'Building Go program...'
                script {
                    sh 'go build -o largest_number_app main.go'
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                script {
                    sh "docker build -t ${DOCKER_IMAGE} ."
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                echo 'Running Docker container...'
                script {
                    sh "docker run ${DOCKER_IMAGE}"
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution completed.'
        }
    }
}

