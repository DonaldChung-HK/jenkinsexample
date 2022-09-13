pipeline {
	agent any

	options {
		buildDiscarder(logRotator(numToKeepStr: '10'))
	}

	parameters {
		booleanParam name: 'RUN_TESTS', defaultValue: true, description: 'Run Tests?'
		booleanParam name: 'RUN_ANALYSIS', defaultValue: true, description: 'Run Static Code Analysis?'
		booleanParam name: 'DEPLOY', defaultValue: true, description: 'Deploy Artifacts?'
	}

	stages {
        stage('Build') {
            steps {
                sh """
				xvfb-run -e /dev/stderr --server-args="-core -noreset -screen 0 640x480x24" --server-num=101 cat ./consoleText.txt
				"""
                logstashSend failBuild: false, maxLines: 100000
            }
        }
	}
}