FROM alpine:edge

ADD start.sh /start.sh
ADD xray /usr/local/bin/xray

RUN apk update && \
    apk add -f --no-cache ca-certificates bash && \
    chmod 777 /start.sh && \
    chmod 777 /usr/local/bin/xray

CMD /start.sh
