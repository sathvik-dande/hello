pipeline {
    agent any

    environment {
        IMAGE_NAME = "hello"
        DOCKERHUB_USER = "sathvikdandey"
        CONTAINER_NAME = "hello"
    }

    stages {

        stage('Build Docker Image') {
            steps {
                sh "docker build -t ${DOCKERHUB_USER}/${IMAGE_NAME} ."
            }
        }

        stage('Remove Old Container') {
            steps {
                sh "docker rm -f ${CONTAINER_NAME} || true"
            }
        }

        stage('Run Container') {
            steps {
                sh "docker run -d -p 5000:5000 --name ${CONTAINER_NAME} ${DOCKERHUB_USER}/${IMAGE_NAME}"
            }
        }

        stage('Test App') {
            steps {
                sh "curl http://localhost:5000"
            }
        }
    }
}
