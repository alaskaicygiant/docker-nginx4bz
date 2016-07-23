FROM alpine

MAINTAINER Owen Ouyang <owen.ouyang@live.com>

RUN apk add --update --no-cache \
	perl \
	fcgi \
	nginx \
	bash

CMD ["nginx"]
