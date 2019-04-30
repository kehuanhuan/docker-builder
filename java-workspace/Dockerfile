FROM ubuntu:17.10

MAINTAINER  huanhuan <1152018701@qq.com>

RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y dialog byobu curl htop man vim wget  && \
  rm -rf /var/lib/apt/lists/*


# Install Java.
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# Install maven
RUN \
    mkdir -p /tmp/src/ && \
    cd /tmp/src && \
    wget http://mirrors.shu.edu.cn/apache/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.tar.gz && \
    tar -zxvf apache-maven-3.5.4-bin.tar.gz -C /opt/ && \
    ln -s /opt/apache-maven-3.5.4-bin/bin/mvn /usr/bin/mvn

RUN rm -rf /tmp/src/*

# Define default command.
CMD ["bash"]






