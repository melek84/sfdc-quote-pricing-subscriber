pipeline {

  agent any
  environment {
    //adding a comment for the commit test
    DEPLOY_CREDS = credentials('deploy-anypoint-user')
    MULE_VERSION = '4.2.1'
    BG = "Blue Bird Company"
    WORKER = "Micro"
  }
  stages {
    stage('Build') {
      steps {
          sh 'mvn clean -DskipTests package'
      }
    }

    stage('Test') {
      steps {
          sh "mvn test -Dmule.env=dev" 
        
          
      }
    }

     stage('CloudHub Deployment') {
      environment {
        ENVIRONMENT = 'Sandbox'
        APP_NAME = 'quote-dev'
      }
      steps {
           sh 'mvn -DskipTests deploy -DmuleDeploy -Dmule.version="%MULE_VERSION%" -Danypoint.username="%DEPLOY_CREDS_USR%" -Danypoint.password="%DEPLOY_CREDS_PSW%" -Dcloudhub.app="%APP_NAME%" -Dcloudhub.environment="%ENVIRONMENT%" -Dcloudhub.bg="%BG%" -Dcloudhub.worker="%WORKER%" -Dmule.env=dev'
      }
    }
  }
}
