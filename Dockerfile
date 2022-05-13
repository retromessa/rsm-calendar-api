# syntax=docker/dockerfile:1

FROM node:10.15.0

ENV NODE_ENV=production

MAINTAINER Zacharias R. Nilsen, zacker@zacker.no

WORKDIR /app


#RUN apk -U upgrade \
#    && apk add git && apk add yarn

RUN git clone https://github.com/retromessa/rsm-calendar-api /app
RUN yarn

COPY . /app
RUN chmod 755 server.js

EXPOSE 5000

CMD [ "npm", "start" ]
