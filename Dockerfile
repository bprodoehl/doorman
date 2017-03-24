FROM node

COPY . /doorman

RUN \
  cd /doorman && \
  npm install && \
  mv conf.environment.js conf.js

WORKDIR /doorman

ENTRYPOINT ["npm", "start"]
