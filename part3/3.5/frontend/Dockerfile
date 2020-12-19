FROM node:14-alpine

WORKDIR frontend
COPY frontend-example-docker .

RUN apk add --no-cache --virtual .gyp python make g++ && \
npm ci && npm prune --production && apk del .gyp && \
chown node . 

USER node
ENV API_URL="http://localhost:8000"

CMD ["npm", "start"]
