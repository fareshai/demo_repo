pipeline { 

    agent any 

    environment { 

        SONARQUBE_SERVER = 'SQ'
        DOCKER_IMAGE = 'helloworld-app:latest' // Replace with your desired image name 

        IMAGE_TAG = 'latest' 

        IMAGE_NAME = 'helloworld-app' // Image name 

 

    } 

    stages { 

        stage('Git Checkout Stage') { 

            steps { 

              checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'fareshai', url: 'https://github.com/fareshai/demo_repo.git']]) 

            } 

        } 
        stage('SonarQube Analysis') { 

            steps { 

                withSonarQubeEnv(SONARQUBE_SERVER) { 

                    sh 'mvn sonar:sonar' 

                } 

            } 

        } 
        stage('Build WAR File') { 

            steps { 

                sh 'mvn clean package' 

            } 

        } 
        stage('Build Docker Image') { 

            steps { 

                sh 'docker build -t $DOCKER_IMAGE .' 

            } 

        } 

         

        stage('Scan Docker Image with Trivy') { 

            steps { 

                sh 'trivy image $DOCKER_IMAGE' 

            } 

        } 

         

        stage('Run Docker Container') { 

            steps { 

                sh 'docker run -d -p 8082:8080 --name app3 $DOCKER_IMAGE' 

            } 

        } 
    }
}
