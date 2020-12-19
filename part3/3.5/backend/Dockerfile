FROM node:14-alpine

WORKDIR backend
COPY backend-example-docker .

RUN apk add --no-cache --virtual .gyp python make g++ && \
npm ci && npm prune --production && apk del .gyp && \
chown node . ./logs.txt

USER node

EXPOSE 8000
ENV FRONT_URL=http://localhost:5000
CMD ["npm", "start"]
