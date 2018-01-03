FROM alpine:3.7

RUN apk add --update --no-cache samba bash

ADD https://github.com/jpetazzo/pipework/blob/master/pipework /pipework

ADD run.sh /run.sh

CMD /run.sh
