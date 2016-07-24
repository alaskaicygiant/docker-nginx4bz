FROM alpine

MAINTAINER Owen Ouyang <owen.ouyang@live.com>

RUN echo http://nl.alpinelinux.org/alpine/edge/testing \
                >> /etc/apk/repositories && \
        apk add --update apache2 apache2-mod-perl

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

