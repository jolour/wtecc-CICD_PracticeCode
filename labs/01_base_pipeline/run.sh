#!/bin/bash

kubectl apply -f tasks.yaml
kubectl apply -f pipeline.yaml

tkn pipeline start --showlog hello-pipeline1

tkn pipeline start hello-pipeline2 --showlog -p message="Hello Tekton!"

tkn pipeline start cd-pipeline \
    --showlog \
    -p repo-url="https://github.com/ibm-developer-skills-network/wtecc-CICD_PracticeCode.git" \
    -p branch="main"
