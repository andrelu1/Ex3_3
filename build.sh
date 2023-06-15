#!/bin/bash

git clone https://github.com/andrelu1/Ex3_3.git ex3_3
cd ex3_3

docker build -t ex3_3 .

echo "$DOCKERHUB_PASSWORD" | docker login --username "$DOCKERHUB_USERNAME" --password-stdin

docker tag ex3_3 4ndrelu1s/ex3_3:latest

docker push 4ndrelu1s/ex3_3:latest

docker rmi ex3_3

cd ..
rm -rf ex3_3
