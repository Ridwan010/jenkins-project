pipeline {

    agent any

    tools {

        maven 'Maven 3'       // Set this in Jenkins > Global Tools Configuration

        jdk 'JDK 21'          // Same here

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

                bat 'docker build -t  %IMAGE_NAME%  .'

            }

        }

        stage('Run Container (Optional Test)') {

            steps {

                bat 'docker run --rm -d -p 5050:9090  %IMAGE_NAME% '

            }

        }

    }

}
 
