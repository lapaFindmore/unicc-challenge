#Getting base image nodeja
FROM node:lts
#Optional:give the mantainer

#Required stack
COPY docusaurus.config.js /mywebsite/yarn/docusaurus.config.js
COPY . /mywebsite

WORKDIR mywebsite

RUN yarn install
RUN yarn run build

CMD yarn run serve 