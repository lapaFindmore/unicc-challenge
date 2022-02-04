#Getting base image nodeja
FROM node:lts

#Optional:give the mantainer
WORKDIR /mywebsite

#Required stack
COPY ./mywebsite/src/css/custom.css /mywebsite/src/css/custom.css
COPY ./mywebsite/docusaurus.config.js /mywebsite/yarn/docusaurus.config.js
COPY ./mywebsite /mywebsite

RUN yarn install

ENTRYPOINT ["yarn", "run","serve","--build"]