#!/bin/bash

git clone https://github.com/andrelu1/Ex3_3.git ex3_3
cd ex3_3

docker build -t ex3_3 .

docker login --username <SUSERNAME_DOCKERHUB> --password <PASSWORLD_DOCKERHUB>

docker tag ex3_3 <USERNAME_DOCKERHUB>/ex3_3

docker push <USERNAME_DOCKERHUB>/ex3_3

docker rmi ex3_3

cd ..
rm -rf ex3_3
