FROM alpine:3.7

RUN apk add --update --no-cache samba bash

ADD run.sh /run.sh

CMD /run.sh
