FROM daocloud.io/yuyongzhi/centos7:latest as source

SHELL ["/bin/bash", "-c"]

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash

RUN echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")" [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> /etc/profile

RUN echo "==================="
RUN cat /etc/profile
RUN echo "==================="

RUN source /etc/profile

RUN nvm install 11.11.0


