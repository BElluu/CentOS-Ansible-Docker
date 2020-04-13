FROM centos:8

LABEL maintainer="Bartlomiej Komendarczuk" \
      email="bkomendarczuk@gmail.com" \
      release-date="08.03.2020"

RUN yum --yes update \
    && yum install --yes gcc python3-pip python3-devel openssl-devel libselinux-python3 \
    && yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm --yes

RUN yum install --yes ansible \
    && python3 -m pip install molecule
