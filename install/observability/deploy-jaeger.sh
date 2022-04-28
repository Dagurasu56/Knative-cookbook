#!/bin/bash 

set -e

kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/main/deploy/cluster_role.yaml
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/main/deploy/cluster_role_binding.yaml
