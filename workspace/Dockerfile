FROM ubuntu:16.04

MAINTAINER  huanhuan <1152018701@qq.com>

RUN apt-get update --fix-missing && \
    apt-get install -y dialog apt-utils pkg-config apt-transport-https wget curl vim && \
    apt-get install -y php-fpm php-cli && \
    apt-get install -y php-curl && \
    apt-get install -y php-mbstring && \
    apt-get install -y php-dev && \
    apt-get install -y php-mcrypt && \
    apt-get install -y php-mysql && \
    apt-get install -y php-gd && \
    apt-get install -y php-bcmath && \
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php -r "if (hash_file('sha384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \

    mkdir -p /tmp/src/ && \
    cd /tmp/src && \
    wget https://nodejs.org/dist/v10.6.0/node-v10.6.0-linux-x64.tar.xz && \
    xz -d node-v10.6.0-linux-x64.tar.xz && \
    tar -xvf  node-v10.6.0-linux-x64.tar -C /opt/ && \
    ln -s /opt/node-v10.6.0-linux-x64/bin/node /usr/bin/node && \
    ln -s /opt/node-v10.6.0-linux-x64/bin/npm /usr/bin/npm && \
    ln -s /usr/bin/node /usr/bin/nodejs && \

    npm install -g yarn && \
    ln -s /opt/node-v10.6.0-linux-x64/bin/yarn /usr/bin/yarn && \

    apt-get autoclean apt && \
    apt-get clean

RUN rm -rf /tmp/src/*






