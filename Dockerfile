FROM node:16-alpine as build

RUN apk add bash curl

RUN npm install -g pnpm

WORKDIR /usr/local/src

RUN mkdir -p /usr/local/src/

EXPOSE 3000 5000