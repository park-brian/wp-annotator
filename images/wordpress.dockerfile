FROM centos:latest

RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm \
 && yum -y update \
 && yum -y install \
    libpng12-devel \
    httpd24u \
    httpd24u-mod_ssl \
    mod_php71u \
    php71u-cli \
    php71u-common \
#   php71u-fpm \
#   php71u-fpm-httpd \
    php71u-gd \
    php71u-json \
    php71u-mbstring \
    php71u-mysqlnd \
    php71u-opcache \
    php71u-pdo \
    php71u-pgsql \
    php71u-xml \
 && yum clean all

CMD httpd -DFOREGROUND
