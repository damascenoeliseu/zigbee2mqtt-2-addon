ARG BUILD_FROM
FROM ghcr.io/home-assistant/amd64-base:3.19

ENV LANG C.UTF-8

RUN apk add --no-cache \
    nodejs \
    npm \
    git \
    make \
    g++ \
    python3

WORKDIR /app

RUN git clone https://github.com/Koenkk/zigbee2mqtt.git . \
    && npm ci --production

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
