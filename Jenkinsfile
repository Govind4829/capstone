pipeline {
    agent any
    parameters {
        choice(name: 'Environment', choices: ['dev', 'master'], description: 'Select Environment')
        string(name: 'ImageTag', defaultValue: 'latest', description: 'Tag for the Docker image')
    }
    environment {
        DOCKER_IMAGE = 'apache24-app'  // Your Docker image name
        DOCKER_CREDENTIALS = 'Docker'  // Docker Hub credentials ID
    }
    stages {
        stage('Checkout') {
            steps {
                script {
                    echo "Selected Environment: ${params.Environment}"  // Checking the parameter value
                    echo "Using Image Tag: ${params.ImageTag}"  // Displaying the image tag
                }
                git branch: params.Environment, url: 'https://github.com/Govind4829/capstone.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${DOCKER_IMAGE}:${params.ImageTag}")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Stop and remove any existing container with the same name
                    sh '''
                    if [ $(docker ps -aq -f name=${DOCKER_IMAGE}) ]; then
                        echo "Stopping and removing existing container..."
                        docker stop ${DOCKER_IMAGE}
                        docker rm ${DOCKER_IMAGE}
                    fi
                    '''
                    
                    // Run the new container from the built image
                    sh "docker run -d --name ${DOCKER_IMAGE} -p 8236:80 ${DOCKER_IMAGE}:${params.ImageTag}"
                }
            }
        }

        stage('Push Docker Image to Docker Hub') {
            steps {
                script {
                    // Determine the repository and tag to use based on the environment and image tag
                    def repoTag = "${params.Environment}:${params.ImageTag}"
                    echo "Pushing Docker image to Docker Hub (Repository: $repoTag)"
                    
                    // Tag the image with the appropriate environment and image tag
                    sh "docker tag ${DOCKER_IMAGE}:${params.ImageTag} praticeuser/${params.Environment}:${params.ImageTag}"
                    
                    // Push the image to the selected repository (dev or master)
                    withDockerRegistry([credentialsId: DOCKER_CREDENTIALS]) {
                        sh "docker push praticeuser/${params.Environment}:${params.ImageTag}"
                    }
                }
            }
        }
    }

    post {
        success {
            echo 'Build, Run, and Push Successful!'
        }
        failure {
            echo 'Build, Run, or Push Failed!'
        }
    }
}
