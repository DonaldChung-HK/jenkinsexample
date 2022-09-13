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
                sh "
				sudo apt install -y xvfb
				run_with_xvfb cat ./Multiline-log.txt
				terminate_xvfb_sessions"
                logstashSend failBuild: false, maxLines: 100000
            }
        }

	}
}
