FROM node:14

WORKDIR /frontend
COPY frontend-example-docker .

ENV API_URL="http://localhost:8000"
RUN npm install
CMD ["npm", "start"]
