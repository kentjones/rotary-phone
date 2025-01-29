pipeline {

	agent any
	environment {
		PATH = "${env.BUN_HOME}/bin:${env.PATH}"
	}
	tools {
		nodejs 'Node-23.6.0'
	}
	stages {
		stage('Install Dependencies'){
			steps {
				sh 'ls -l $pwd'
				sh 'bun install'
			}
		}
		stage('Bundle') {
			steps {
				sh 'bun run bundle'
			}
		}
	}
}
