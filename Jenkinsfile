pipeline {
    agent any

    stages {
        stage('Verify checkout') {
            steps {
                sh '''
                    set -eu
                    git log -1 --oneline
                    test -s app/index.html
                    test -s app/Dockerfile
                    test -s k8s/dashboard.yaml
                    echo "Dashboard source, Dockerfile, and Kubernetes manifest verified."
                '''
            }
        }
    }
}
