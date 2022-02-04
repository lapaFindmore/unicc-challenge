#Getting base image nodeja
FROM node:lts

#Optional:give the mantainer
WORKDIR /docusaurus

#Required stack

#COPY ./mywebsite/sidebars.js /mywebsite/sidebars.js
#COPY ./mywebsite/src/css/custom.css /mywebsite/src/css/custom.css
#COPY ./mywebsite/docusaurus.config.js /mywebsite/yarn/docusaurus.config.js
COPY ./docusaurus /docusaurus

RUN yarn install

ENTRYPOINT ["yarn", "run","serve","--build"]