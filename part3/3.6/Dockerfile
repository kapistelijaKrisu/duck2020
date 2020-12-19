FROM node:14-alpine as build-stage

WORKDIR frontend
COPY frontend-example-docker/ .
ENV API_URL="http://localhost:8000"

RUN apk add --no-cache --virtual .gyp python make g++ && \
npm ci && npm prune --production && npm run build && \
apk del .gyp

FROM node:14-alpine as app
WORKDIR frontend

COPY --from=build-stage /frontend/node_modules node_modules
COPY --from=build-stage /frontend/dist dist

RUN chown node . 
USER node


CMD ["node", "./node_modules/serve/bin/serve.js", "-s", "-l", "5000", "dist"]
