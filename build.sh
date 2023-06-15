#!/bin/bash

git clone https://github.com/andrelu1/Ex3_2.git ex3_2
cd ex3_2

docker build -t ex3_2 .

docker login --username <SEU_USERNAME_DOCKERHUB> --password <SUA_SENHA_DOCKERHUB>

docker tag ex3_2 <SEU_USERNAME_DOCKERHUB>/ex3_2

docker push <SEU_USERNAME_DOCKERHUB>/ex3_2

docker rmi ex3_2

cd ..
rm -rf ex3_2
