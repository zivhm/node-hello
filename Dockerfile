FROM node:10
ARG DEVOPS-LEVEL
MAINTAINER Lidor G
WORKDIR /usr/app
COPY . .
RUN npm install & echo "$DEVOPS-LEVEL"
ENV ENVIRONMENT PRODUCTION 
 
CMD ["node", "index.js"]
