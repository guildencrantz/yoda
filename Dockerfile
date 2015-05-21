FROM centos:centos7

RUN set -x                     && \
    yum update -y              && \
    yum install -y git php-cli && \
    yum clean all

COPY . /yoda

WORKDIR /yoda

RUN set -x             && \
    ./composer install

ENTRYPOINT ["/yoda/yoda"]

