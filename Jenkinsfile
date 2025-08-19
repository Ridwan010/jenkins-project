pipeline {

    agent any

    tools {

        maven 'Maven 3'       

        jdk 'JDK 17'          

    }

    environment {

        IMAGE_NAME = 'zeez'

        JAR_FILE = 'target/zeez-0.0.1-SNAPSHOT.jar'

    }

    stages {

        stage('Checkout') {

            steps {

                checkout scmGit(branches: [[name: '*/development']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Ridwan010/jenkins-project.git']])

            }

        }

        stage('Build JAR') {

            steps {

                bat 'mvn clean package'

            }

        }

        stage('Build Docker Image') {

            steps {

                bat 'docker build -t $IMAGE_NAME .'

            }

        }

        stage('Running Chuka Docker Container') {

            steps {

                bat 'docker run -d -p 5050:9090 $IMAGE_NAME'

            }

        }

    }

}
 