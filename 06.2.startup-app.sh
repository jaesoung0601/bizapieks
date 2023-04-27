#!/bin/bash

. ./env.properties

export KUBECONFIG=${KUBE_CONFIG}

bash ns-scale.sh load apim-dev sts
bash ns-scale.sh load apim-dev deploy
bash ns-scale.sh load apim-stg sts
bash ns-scale.sh load apim-stg deploy
bash ns-scale.sh load biz-api-dev sts
bash ns-scale.sh load biz-api-dev deploy
bash ns-scale.sh load biz-api-stg sts
bash ns-scale.sh load biz-api-stg deploy