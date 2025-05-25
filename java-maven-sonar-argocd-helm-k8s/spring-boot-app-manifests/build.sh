#!/bin/bash

# Use fallback if BUILD_NUMBER is not set
BUILD_NUMBER="${BUILD_NUMBER:-0}"

# Optional debug print
echo "Setting deployment image tag to: cicd:${BUILD_NUMBER}"

# Replace tag using regex, match anything after 'cicd:'
sed -i "s|\(dockaleem/ultimate-cicd:\).*|\1${BUILD_NUMBER}|" java-maven-sonar-argocd-helm-k8s/spring-boot-app-manifests/deployment.yml

# Show diff for Jenkins logs
git diff java-maven-sonar-argocd-helm-k8s/spring-boot-app-manifests/deployment.yml

