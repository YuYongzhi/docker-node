FROM daocloud.io/yuyongzhi/centos7:latest as source

SHELL ["/bin/bash", "-c"]

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash

RUN echo 'export NVM_DIR="$HOME/.nvm" \
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm \
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion' >> /etc/profile

RUN echo "==================="
RUN cat /etc/profile
RUN echo "==================="

RUN source /etc/profile

RUN nvm install 11.11.0


