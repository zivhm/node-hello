FROM node
MAINTAINER Lidor

WORKDIR /var/app
COPY . .
RUN npm install


EXPOSE 3000
CMD ["node", "index.js"]

