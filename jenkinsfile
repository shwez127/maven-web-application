pipeline {
    agent any

    tools {
        maven 'mav12'
        // SonarQubeScanner 'sonarqube1'
    }
    
    stages {
        stage('Git Checkout') {
            steps {
                git 'https://github.com/shwez127/maven-web-application.git'
            }
        }
    
        stage('build no') {
            steps {
                echo "the build nuber is: ${env.BUILD_NUMBER}"
            }
        }

        stage('Build') {
            steps {
                sh "${tool(name: 'mav12')}/bin/mvn clean package"
            }
        }

        

        stage('SonarQube Analysis') {
            steps {
                // Run SonarQube scanner
                withSonarQubeEnv('sonarqube1') {
                    sh 'mvn sonar:sonar'
                }
            }
        }

        // stage('nexus') {
        //     steps {
        //       sh 'mvn deploy'
        //     }
        // }

        // stage('Deploy to Nexus') {
        //     steps {
        //         // Configure Nexus credentials
        //         withCredentials([usernamePassword(credentialsId: 'nexus1', usernameVariable: 'NEXUS_USERNAME', passwordVariable: 'NEXUS_PASSWORD')]) {
        //             // Deploy to Nexus (adjust the Nexus repository URL as needed)
        //             sh "mvn deploy -DaltDeploymentRepository=nexus::default::http://172.17.0.2:8081/repository/maven-releases/"

        //             // Additional deployment steps as needed
        //         }
        //     }
        // }
    }
}
