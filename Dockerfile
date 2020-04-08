FROM centos:8

LABEL maintainer="Bartlomiej Komendarczuk" \
      email="bkomendarczuk@gmail.com" \
      release-date="08.03.2020"

RUN yum -y update \
    && yum install -y gcc python3-pip python3-devel openssl-devel libselinux-python3 \
    && yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y

RUN yum install -y ansible \
    && python3 -m pip install molecule
