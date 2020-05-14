FROM ubuntu:16.04
WORKDIR /workdir
RUN apt-get update && apt-get install -y curl
COPY le_script.sh le_script.sh 
CMD ["sh", "le_script.sh"] 
