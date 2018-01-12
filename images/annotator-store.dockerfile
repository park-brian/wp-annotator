FROM centos:latest

RUN yum -y install y epel-release \
 && yum -y update \
 && yum -y install git python-pip which \
 && yum clean all 

WORKDIR /opt

RUN git clone https://github.com/park-brian/annotator-store \
 && pushd annotator-store \
 && pip install -e.[flask]

COPY annotator.cfg /opt/annotator-store/annotator.cfg 

COPY wait-for-it.sh /bin/wait-for-it.sh

WORKDIR /opt/annotator-store

CMD bash wait-for-it.sh elasticsearch:9200 -- python run.py
