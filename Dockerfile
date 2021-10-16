FROM ttbb/base:centos

LABEL maintainer="shoothzj@gmail.com"

ENV POSTGRE_HOME /opt/sh/postgre

RUN dnf install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm && \
dnf -qy module disable postgresql && \
dnf install -y postgresql13-server && \
dnf clean all && \
mkdir /opt/sh/postgre && \
chown -R sh:sh /opt/sh


WORKDIR /opt/sh/postgre
USER sh