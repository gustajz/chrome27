FROM centos:6.7

MAINTAINER Gustavo Jotz <gustavojotz@cwi.com.br>

ARG CHROME google-chrome-stable-27.0.1453.110-202711.x86_64.rpm

ENV LIBGL_ALWAYS_INDIRECT=1 \
    QT_X11_NO_MITSHM=1 \
    _X11_NO_MITSHM=1 \
    _MITSHM=0 \
    TZ=America/Sao_Paulo

ADD ${CHROME} .

RUN yum -y update && yum -y install ${CHROME} xcb-util-image libv4l  \
    && yum clean all \
    && rm ${CHROME}

ENTRYPOINT export QT_X11_NO_MITSHM=1 && \
    export _X11_NO_MITSHM=1 && \
    export _MITSHM=0 && \
    export LIBGL_ALWAYS_INDIRECT=1 && \
    google-chrome --user-data-dir=/tmp