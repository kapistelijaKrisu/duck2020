#!/bin/bash

GIT_REPO="$1"
ROOT_FOLDER="$2"
VERSION="$3"
USERNAME="$4"

#clone and build
git clone ${GIT_REPO}
cd ${ROOT_FOLDER}
docker build -t ${ROOT_FOLDER}:${VERSION} .
cd ..

#tag and publish
docker tag ${ROOT_FOLDER}:${VERSION} ${USERNAME}/${ROOT_FOLDER}:${VERSION}
docker push ${USERNAME}/${ROOT_FOLDER}:${VERSION}
