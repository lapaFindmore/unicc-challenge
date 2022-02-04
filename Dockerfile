#Getting base image nodeja
FROM node:lts

#Optional:give the mantainer
WORKDIR /mywebsite

#Required stack
COPY . /mywebsite

RUN yarn install

ENTRYPOINT ["yarn", "run","serve","--build"]
