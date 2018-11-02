node {
  def commit_id
  stage('Init') {
    checkout scm
  }
  stage('Push-Images') {
    def nodeYarnVersion = readFile('./node8-yarn/version.txt').trim()
    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub') {
      def app = docker.build("juancr11/node8-yarn:${nodeYarnVersion}", 'node8-yarn').push()
      // def app2 = docker.build("juancr11/terraform-terragrunt", 'terraform-terragrunt').push()
      // def app3 = docker.build("juancr11/cypress-node8-yarn", 'cypress-node8-yarn').push()
    }
  }
}
