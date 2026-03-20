ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --no-cache \
  nodejs \
  npm \
  git

RUN git clone https://github.com/Koenkk/zigbee2mqtt.git /app

WORKDIR /app

RUN npm ci

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]