pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out source code...'
                // In real projects, you'd use `checkout scm`
            }
        }

        stage('Build') {
            steps {
                echo 'Running build script...'
                sh 'chmod +x build.sh'
                sh './build.sh'
            }
        }

        stage('Archive') {
            steps {
                echo 'Archiving build output...'
                archiveArtifacts artifacts: 'build_output.txt', fingerprint: true
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}
