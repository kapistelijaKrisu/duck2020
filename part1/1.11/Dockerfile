FROM node:14

WORKDIR backend

EXPOSE 8000

ENV FRONT_URL=http://localhost:5000

COPY backend-example-docker .

RUN npm install

CMD ["npm", "start"]
