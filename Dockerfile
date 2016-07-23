FROM alpine

MAINTAINER Owen Ouyang <owen.ouyang@live.com>

RUN apk add --update --no-cache \
	perl \
	fcgi \
	fcgiwrap \
	nginx \
	supervisor \
	bash

CMD ["nginx"]
