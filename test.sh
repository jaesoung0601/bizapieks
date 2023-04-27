#!/bin/bash

. ./env.properties

export KUBECONFIG=${KUBE_CONFIG}


bash ns-scale.sh set mpoc-dev sts 1
bash ns-scale.sh set mpoc-dev deploy 1
bash ns-scale.sh set mpoc-dev-bff sts 1
bash ns-scale.sh set mpoc-dev-bff deploy 1
bash ns-scale.sh set mpoc-dev-cor sts 1
bash ns-scale.sh set mpoc-dev-cor deploy 1
bash ns-scale.sh set whatap-monitoring daemonsets 1
bash ns-scale.sh set whatap-monitoring deploy 1
