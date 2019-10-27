#基于 centos7 构建 node 环境
FROM daocloud.io/yuyongzhi/centos7 as source

SHELL ["/bin/bash", "-c"]

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash

RUN echo '' >> /etc/profile \
  && echo 'export NVM_DIR=$HOME/.nvm' >> /etc/profile \
  && echo 'source $NVM_DIR/nvm.sh' >> /etc/profile \
  && echo 'source $NVM_DIR/bash_completion' >> /etc/profile \
  && echo '' >> /etc/profile \
  && source /etc/profile \
  && nvm install 11.11.0 \
  && ln -s `type -p node` /usr/local/sbin/node \
  && ln -s `type -p npm` /usr/local/sbin/npm \
  && echo 'source /etc/profile' >> ~/.bashrc
