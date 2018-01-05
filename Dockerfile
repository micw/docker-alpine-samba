FROM alpine:3.7

RUN apk add --update --no-cache samba bash

ADD https://raw.githubusercontent.com/jpetazzo/pipework/master/pipework /pipework

ADD run.sh /run.sh

CMD /run.sh
