FROM alpine:3.4

MAINTAINER Tim Jones <tim@spotahome.com>

RUN apk add --no-cache \
        lighttpd

ENTRYPOINT [ "/usr/sbin/lighttpd" ]
CMD [ "-D", "-f", "/etc/lighttpd/lighttpd.conf" ]

ADD lighttpd.conf /etc/lighttpd/

RUN rm -rf /var/www/localhost

ADD project /var/www/project
