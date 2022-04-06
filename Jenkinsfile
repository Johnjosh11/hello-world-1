pipeline {
  agent {
    node {
        label 'slave1'
        customWorkspace '/tmp'
    }
}
  
    stages {
    stage('Checkout') {
      steps {
      git 'https://github.com/Johnjosh11/hello-world-1'
      }
    }
    stage('Clean and build') {
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
      steps {
          deploy adapters: [tomcat9(credentialsId: 'tomcat', path: '', url: 'http://13.58.41.200:8080/')], contextPath: null, war: '**/*.war'
      }
    }
  }
}
