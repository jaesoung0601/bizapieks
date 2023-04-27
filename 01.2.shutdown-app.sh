#!/bin/bash

. ./env.properties

export KUBECONFIG=${KUBE_CONFIG}

bash ns-scale.sh dump apim-dev sts
bash ns-scale.sh dump apim-dev deploy
bash ns-scale.sh dump apim-stg sts
bash ns-scale.sh dump apim-stg deploy
bash ns-scale.sh dump biz-api-dev sts
bash ns-scale.sh dump biz-api-dev deploy
bash ns-scale.sh dump biz-api-stg sts
bash ns-scale.sh dump biz-api-stg deploy

bash ns-scale.sh set apim-dev sts 0
bash ns-scale.sh set apim-dev deploy 0
bash ns-scale.sh set apim-stg sts 0
bash ns-scale.sh set apim-stg deploy 0
bash ns-scale.sh set biz-api-dev sts 0
bash ns-scale.sh set biz-api-dev deploy 0
bash ns-scale.sh set biz-api-stg sts 0
bash ns-scale.sh set biz-api-stg deploy 0
