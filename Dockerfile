FROM daocloud.io/yuyongzhi/centos7:latest as source

SHELL ["/bin/bash", "-c"]

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash

RUN echo '' >> /etc/profile
RUN echo 'export NVM_DIR=$HOME/.nvm' >> /etc/profile
RUN echo 'source $NVM_DIR/nvm.sh' >> /etc/profile
RUN echo 'source $NVM_DIR/bash_completion' >> /etc/profile
RUN echo '' >> /etc/profile
RUN source /etc/profile \
  && nvm install 11.11.0

