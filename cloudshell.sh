#!/bin/bash
# gcloud auth revoke --all

# while [[ -z "$(gcloud config get-value core/account)" ]]; 
# do echo "waiting login" && sleep 2; 
# done

# while [[ -z "$(gcloud config get-value project)" ]]; 
# do echo "waiting project" && sleep 2; 
# done


gcloud config set compute/zone us-central1-a
gcloud container clusters create awwvision \
    --num-nodes 2 \
    --scopes cloud-platform

gcloud container clusters get-credentials awwvision
sudo apt-get update
sudo apt-get install virtualenv
virtualenv -p python3 venv
source venv/bin/activate
#git clone https://github.com/GoogleCloudPlatform/cloud-vision
cd cloud-vision/python/awwvision
make all

kubectl get pods



# docker images
# gcloud config set compute/zone us-central1-a
# gcloud container clusters get-credentials awwvision
# sudo apt-get update
# sudo apt-get install virtualenv
# virtualenv -p python3 venv
# source venv/bin/activate
# git clone https://github.com/GoogleCloudPlatform/cloud-vision
# cd cloud-vision/python/awwvision
# GCLOUD_PROJECT=$(gcloud config list project --format="value(core.project)")
# cd ~/cloud-vision/python/awwvision/webapp

# GCLOUD_PROJECT=$(gcloud config list project --format="value(core.project)")
# cd ~/cloud-vision/python/awwvision/webapp
# docker build -t gcr.io/$GCLOUD_PROJECT/awwvision-webapp .
# gcloud docker -- push gcr.io/$GCLOUD_PROJECT/awwvision-webapp


# GCLOUD_PROJECT=$(gcloud config list project --format="value(core.project)")
# cd ~/cloud-vision/python/awwvision/worker
# docker build -t gcr.io/$GCLOUD_PROJECT/awwvision-worker .
# gcloud docker -- push gcr.io/$GCLOUD_PROJECT/awwvision-worker


# source ~/venv/bin/activate
# GCLOUD_PROJECT=$(gcloud config list project --format="value(core.project)")

# cd ~/cloud-vision/python/awwvision/
# kubectl delete --ignore-not-found -f redis/spec.yaml
# kubectl create -f redis/spec.yaml
# sed "s/\$GCLOUD_PROJECT/$GCLOUD_PROJECT/g" webapp/spec.tmpl.yaml > spec.yaml
# kubectl delete --ignore-not-found -f spec.yaml
# kubectl create -f spec.yaml


# GCLOUD_PROJECT=$(gcloud config list project --format="value(core.project)")
# cd ~/cloud-vision/python/awwvision/worker
# sed "s/\$GCLOUD_PROJECT/$GCLOUD_PROJECT/g" spec.tmpl.yaml > spec.yaml
# kubectl delete --ignore-not-found -f spec.yaml
# kubectl create -f spec.yaml


## When Problem 







