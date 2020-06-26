pipeline {
  agent {
    dockerfile {
      filename 'myapp'
    }

  }
  stages {
    stage('') {
      steps {
        dockerNode(image: 'docker pull punitporwal07/myapp:0.1')
      }
    }
  }
}