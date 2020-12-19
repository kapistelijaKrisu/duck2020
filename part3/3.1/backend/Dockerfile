FROM ubuntu:16.04

COPY backend-example-docker backend

RUN apt-get update && \
apt-get install -y curl && \
curl -sL https://deb.nodesource.com/setup_14.x | bash && \
apt-get install -y nodejs && \
cd backend && npm ci

WORKDIR backend

EXPOSE 8000
ENV FRONT_URL=http://localhost:5000
CMD ["npm", "start"]
