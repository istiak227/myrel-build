FROM node:16.15.1-alpine

WORKDIR /build

ENV PATH="./node_modules/.bin:$PATH"

COPY . .

RUN npm install -g serve

RUN serve -s build

EXPOSE 3000
