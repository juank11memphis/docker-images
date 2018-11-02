FROM ubuntu:latest

# Replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Packages to
# --Acquire dependencies
ENV ACQUIRE_DEPENDENCIES "apt-transport-https ca-certificates curl gnupg git openssh-client"
# --Scripting dependencies
ENV SCRIPTING_DEPENDENCIES "jq"

RUN apt update \
  && apt install -y -q --no-install-recommends \
  ${ACQUIRE_DEPENDENCIES} \
  ${SCRIPTING_DEPENDENCIES}

# nvm environment variables
ENV NVM_DIR /usr/local/nvm
# ENV NVM_VERSION 0.33.11
ENV NODE_VERSION 8.12.0

# install nvm
RUN mkdir $NVM_DIR
RUN curl --silent -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# install node and npm, set default alias
RUN source $NVM_DIR/nvm.sh \
  && nvm install $NODE_VERSION \
  && nvm alias default $NODE_VERSION \
  && nvm use default

# add node and npm to path so the commands are available
ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

# install yarn
RUN npm install -g yarn \
  && yarn --version

RUN node --version
RUN yarn --version
CMD [ "node" ]
