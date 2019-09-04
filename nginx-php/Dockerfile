FROM ubuntu:16.04

MAINTAINER  huanhuan <1152018701@qq.com>

RUN apt-get update  && \
    apt-get install -y nginx supervisor && \
    apt-get install -y dialog apt-utils pkg-config wget curl cron vim && \
    apt-get install -y php7-fpm php7-cli && \
    apt-get install -y php7.1-curl && \
    apt-get install -y php7.1-mbstring && \
    apt-get install -y php7.1-dev && \
    apt-get install -y php7.1-mcrypt && \
    apt-get install -y php7.1-mysql && \
    apt-get install -y php7.1-gd && \
    apt-get install -y php7.1-bcmath && \
    apt-get install -y unzip && \
    wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.0.0-linux-x86_64.tar.gz && \
    tar -zxvf filebeat-7.0.0-linux-x86_64.tar.gz && \
    mv filebeat-7.0.0-linux-x86_64 /usr/local/filebeat && \
    rm -rf filebeat-7.0.0-linux-x86_64

COPY scripts/ /var/opt/bin/

COPY conf/service.conf /etc/supervisor/conf.d/

RUN rm -Rf /etc/nginx/nginx.conf && \
    rm -Rf /etc/nginx/sites-available/default && \
    rm -Rf /etc/nginx/enable-available/default && \
    mkdir -p /run/php && \
    chmod 755 /var/opt/bin/start.sh

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' > /etc/timezone

COPY conf/nginx.conf /etc/nginx/nginx.conf

COPY conf/nginx-site.conf /etc/nginx/sites-available/default

COPY src/ /var/www/html/public

CMD ["/var/opt/bin/start.sh"]

EXPOSE 80


