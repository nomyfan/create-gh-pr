FROM node:14.17.0-alpine3.13
RUN apk add git
COPY package.json yarn.lock /
RUN yarn install
COPY index.mjs /index.mjs
ENTRYPOINT [ "node", "/index.mjs"]