#!/bin/bash
BUILD_NUMBER=${BUILD_NUMBER}
let PRE_BUILD=$BUILD_NUMBER-1
sed -i "s/cicd:$PRE_BUILD/cicd:$BUILD_NUMBER/g" java-maven-sonar-argocd-helm-k8s/spring-boot-app-manifests/deployment.yml
