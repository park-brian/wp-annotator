FROM centos:latest

ENV ELASTICSEARCH_VERSION="1.7.3"
ENV JAVA_HOME="/usr/lib/jvm/jre-1.8.0"

WORKDIR /opt

RUN yum -y update \
 && yum -y install java \
 && yum clean all \
 && curl https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-${ELASTICSEARCH_VERSION}.tar.gz | tar xz 

CMD /opt/elasticsearch-${ELASTICSEARCH_VERSION}/bin/elasticsearch
