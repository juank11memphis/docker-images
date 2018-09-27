FROM ubuntu:latest
RUN apt-get update && apt-get -y install zip && apt-get -y install unzip && apt install -y wget && apt-get -y install git
# Installs terraform and terragrunt
RUN wget https://releases.hashicorp.com/terraform/0.11.8/terraform_0.11.8_linux_amd64.zip
RUN unzip terraform_0.11.8_linux_amd64.zip
RUN mv terraform /usr/local/bin/
RUN wget -q https://github.com/gruntwork-io/terragrunt/releases/download/v0.16.11/terragrunt_linux_amd64
RUN chmod +x terragrunt_linux_amd64
RUN mv terragrunt_linux_amd64 /usr/local/bin/terragrunt
CMD ["/bin/bash"]
