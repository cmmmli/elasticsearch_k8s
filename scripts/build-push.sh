#!/bin/bash

GCP_PROJECT=$(gcloud config get-value project)
rand_str=$(cat /dev/urandom | base64 | tr -dc "[:alnum:]" | tr "[:upper:]" "[:lower:]" | fold -w 32 | head -n 1)
tag="5.6.2.${rand_str}"
docker build -t asia.gcr.io/$GCP_PROJECT/elasticsearch:$tag .
gcloud docker -- push asia.gcr.io/$GCP_PROJECT/elasticsearch:$tag
echo "===============  generated_tag: ${tag}  ==============="
