FROM node:14-alpine as build-stage

WORKDIR app
COPY distributed-string-manipulator/ .

RUN apk add --no-cache --virtual .gyp python make g++ && \
npm ci && npm prune --production && \
apk del .gyp

FROM node:14-alpine as app
WORKDIR app

COPY --from=build-stage /app/node_modules node_modules
COPY --from=build-stage /app/index.js index.js

RUN chown node . 
USER node


CMD ["node", "index.js"]
