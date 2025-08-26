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
            }
        }

        stage('Run Environment-Specific Build') {
            steps {
                script {
                    switch (params.ENVIRONMENT) {
                        case 'dev':
                            sh './build.sh --dev'
                            break
                        case 'staging':
                            sh './build.sh --staging'
                            break
                        case 'prod':
                            sh './build.sh --prod'
                            break
                        default:
                            error "Unknown environment: ${params.ENVIRONMENT}"
                    }
                }
            }
        }
    }
}

