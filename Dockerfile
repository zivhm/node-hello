FROM node:10
MAINTAINER Lidor G
WORKDIR /usr/app
COPY . .
RUN npm install
CMD ["node", "index.js"]