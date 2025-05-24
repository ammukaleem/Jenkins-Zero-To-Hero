#!/bin/bash
BUILD_NUMBER="${BUILD_NUMBER:- 0}"
PRE_BUILD=$(expr BUILD_NUMBER - 1)
echo "Updating image tag: cicd:$PRE_BUILD -> cicd:$BUILD_NUMBER"
sed -i "s/cicd:$PRE_BUILD/cicd:$BUILD_NUMBER/g" java-maven-sonar-argocd-helm-k8s/spring-boot-app-manifests/deployment.yml
git diff java-maven-sonar-argocd-helm-k8s/spring-boot-app-manifests/deployment.yml
