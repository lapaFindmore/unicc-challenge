#Getting base image nodeja
FROM node:lts

#Optional:give the mantainer
WORKDIR /mywebsite

#Required stack
COPY ./docusaurus.config.js /mywebsite/yarn/docusaurus.config.js
COPY . /mywebsite

RUN yarn install

ENTRYPOINT ["yarn", "run","serve","--build"]
