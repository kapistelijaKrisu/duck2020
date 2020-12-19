FROM ubuntu:16.04

COPY frontend-example-docker frontend

RUN apt-get update && \
apt-get install -y curl && \
curl -sL https://deb.nodesource.com/setup_14.x | bash && \
apt-get install -y nodejs && \
cd frontend && npm ci && \
useradd -ms /bin/bash pepo && \
chown pepo .

USER pepo
ENV API_URL="http://localhost:8000"
WORKDIR frontend
CMD ["npm", "start"]
