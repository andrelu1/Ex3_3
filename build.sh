#!/bin/bash

git clone https://github.com/andrelu1/Ex3_3.git ex3_3
cd ex3_3

docker build -t ex3_3 .

echo "$DOCKERHUB_PASSWORD" | docker login --username "$DOCKERHUB_USERNAME" --password-stdin

docker tag ex3_3 "$DOCKERHUB_USERNAME"/ex3_3

docker push "$DOCKERHUB_USERNAME"/ex3_3

docker rmi ex3_3

cd ..
rm -rf ex3_3
