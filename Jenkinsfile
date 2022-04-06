pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
      sh 'mvn clean'
      }
    }
    stage('Test') {
      steps {
      sh  'mvn test'
      }
    }
    stage('package') {
      steps {
      sh  'mvn package'
      }
    }
    stage('deploy to tomcat'){
      step {
          deploy adapters: [tomcat9(credentialsId: 'tomcat', path: '', url: 'http://13.58.41.200:8080/')], contextPath: null, war: '**/*.war'
      }
    }
  }
}
