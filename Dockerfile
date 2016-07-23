FROM alpine

MAINTAINER Owen Ouyang <owen.ouyang@live.com>

RUN apk add --update --no-cache \
	perl \
	fcgi \
	fcgiwrap \
	nginx \
	supervisor \
	bash && \
	mkdir -p /run/nginx

COPY fcgiwrap /etc/init.d/fcgiwrap

CMD ["nginx"]
