#!/bin/bash 

set -e

kubectl create namespace observability 
kubectl create \
  -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/main/deploy/crds/jaegertracing.io_jaegers_crd.yaml # <2>
  -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/main/deploy/service_account.yaml
  -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/main/deploy/role.yaml
  -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/main/deploy/role_binding.yaml
  -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/main/deploy/operator.yaml
