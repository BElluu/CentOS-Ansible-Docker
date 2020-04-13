FROM centos:8

LABEL maintainer="Bartlomiej Komendarczuk" \
      email="bkomendarczuk@gmail.com" \
      release-date="08.03.2020"

RUN yum --assumeyes update \
    && yum install --assumeyes gcc

RUN yum install --assumeyes python3-pip python3-devel openssl-devel libselinux-python3

RUN yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm --assumeyes

RUN yum install --assumeyes ansible \
    && python3 -m pip install molecule
