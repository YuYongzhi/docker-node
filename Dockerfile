FROM daocloud.io/yuyongzhi/centos7:latest as source

SHELL ["/bin/bash", "-c"]

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash

RUN echo 'export NVM_DIR="$HOME/.nvm' >> /etc/profile
RUN echo 'source "$NVM_DIR/nvm.sh"'
RUN echo 'source "$NVM_DIR/bash_completion"'
RUN source /etc/profile

RUN echo "==================="
RUN cat /etc/profile
RUN echo "==================="

RUN source /etc/profile

RUN nvm install 11.11.0


