pipeline {
    agent any
    environment {
        DOCKER_HUB_DEV = 'praticeuser/dev'
        DOCKER_HUB_PROD = 'praticeuser/prod'
        DOCKER_IMAGE = 'apache5-app'
        DOCKER_CREDENTIALS = 'Docker'
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'dev', url: 'https://github.com/Govind4829/capstone.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Building the Docker image
                    docker.build("$DOCKER_IMAGE:$BUILD_ID")
                }
            }
        }

        stage('Push Docker Image to Docker Hub (Dev)') {
            when {
                branch 'dev'
            }
            steps {
                script {
                    // Log in to Docker Hub
                    docker.withRegistry('https://hub.docker.com', "$DOCKER_CREDENTIALS") {
                        // Push the image to the dev repository
                        docker.image("$DOCKER_IMAGE:$BUILD_ID").push('dev')
                    }
                }
            }
        }

        stage('Push Docker Image to Docker Hub (Prod)') {
            when {
                branch 'master'
            }
            steps {
                script {
                    // Log in to Docker Hub
                    docker.withRegistry('https://hub.docker.com', "$DOCKER_CREDENTIALS") {
                        // Push the image to the prod repository
                        docker.image("$DOCKER_IMAGE:$BUILD_ID").push('prod')
                    }
                }
            }
        }

        stage('Deploy to Docker Host') {
            steps {
                script {
                    // Deploy the container (stop and remove any running container with the same name)
                    #sh 'docker ps -q --filter "name=my-container" | xargs -r docker stop | xargs -r docker rm'
                    
                    // Run the container from the pushed image
                    sh 'docker run -d --name apache5-app -p 8040:80 $IMAGE_NAME:$TAG'
                }
            }
        }
    }

    post {
        success {
            echo 'Build and Push Successful!'
        }
        failure {
            echo 'Build or Push Failed!'
        }
    }
}
