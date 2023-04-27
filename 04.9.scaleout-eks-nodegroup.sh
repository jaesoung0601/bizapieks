#!/bin/bash

. ./env.properties

export KUBECONFIG=${KUBE_CONFIG}


eksctl scale nodegroup \
--cluster ${CLUSTER_NAME} \
--name ${NODEGROUP_NAME} \
--profile ${AWS_PROFILE} \
--nodes 2 \
--nodes-max 2 \
--nodes-min 2 \
-v 5

kubectl label nodes -l alpha.eksctl.io/nodegroup-name=skb-bizapi-dev-worker-8-32 node-role.kubernetes.io/worker=worker
#kubectl label nodes -l alpha.eksctl.io/nodegroup-name=skb-share-control-eks-mgmt-16-64 node-role.kubernetes.io/edge=edge
#kubectl label nodes -l alpha.eksctl.io/nodegroup-name=skb-share-control-eks-mgmt-16-64 node-role.kubernetes.io/logging=logging
#kubectl label nodes -l alpha.eksctl.io/nodegroup-name=skb-share-control-eks-mgmt-16-64 node-role.kubernetes.io/management=management
#kubectl label nodes -l alpha.eksctl.io/nodegroup-name=skb-share-control-eks-mgmt-16-64 node-role.kubernetes.io/monitoring=monitoring
#kubectl label nodes -l alpha.eksctl.io/nodegroup-name=skb-share-control-eks-mgmt-16-64 role=management
kubectl label nodes -l alpha.eksctl.io/nodegroup-name=skb-bizapi-dev-worker-8-32 role=worker
