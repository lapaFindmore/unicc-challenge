#Getting base image nodeja
FROM node:lts

#Optional:give the mantainer
WORKDIR /mywebsite

#Required stack
COPY ./mywebsite /var/lib/docker/tmp/docker-builder391552912/mywebsite

RUN yarn install

ENTRYPOINT ["yarn", "run","serve","--build"]