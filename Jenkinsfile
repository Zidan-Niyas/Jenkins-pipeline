pipeline {
    agent any

    parameters {
        choice(
            name: 'ENVIRONMENT',
            choices: ['dev', 'staging', 'prod'],
            description: 'Choose the deployment environment'
        )
    }

    stages {
        stage('Print Selected Environment') {
            steps {
                echo "You selected: ${params.ENVIRONMENT}"
                sh 'chmod +x build.sh'
            }
        }

        stage('Run Environment-Specific Build') {
            steps {
                script {
                    switch (params.ENVIRONMENT) {
                        case 'dev':
                            sh './build.sh ${params.ENVIRONMENT}'
                            break
                        case 'staging':
                            sh './build.sh ${params.ENVIRONMENT}'
                            break
                        case 'prod':
                            sh './build.sh ${params.ENVIRONMENT}'
                            break
                        default:
                            error "Unknown environment: ${params.ENVIRONMENT}"
                    }
                }
            }
        }
    }
}

