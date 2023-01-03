pipeline {
  agent any
  stages {
    stage('Git Checkout') {
      steps {
        git(url: 'https://github.com/mdashrafadib/Java-web-calculator.git', branch: 'main')
        build 'mvn package'
      }
    }

  }
}