FROM centos:8

LABEL maintainer="Bartlomiej Komendarczuk" \
      email="bkomendarczuk@gmail.com" \
      release-date="08.03.2020"

RUN rm --recursive /var/cache/dnf

RUN dnf --assumeyes update

RUN dnf install --assumeyes gcc

RUN dnf install --assumeyes python3-pip python3-devel openssl-devel libselinux-python3

RUN dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm --assumeyes

RUN dnf install --assumeyes ansible

RUN python3 -m pip install molecule
