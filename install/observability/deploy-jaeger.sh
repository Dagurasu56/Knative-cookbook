#!/bin/bash 

set -e

kubectl apply \
  -f https://github.com/knative/serving/releases/download/v0.7.0/serving.yaml --selector networking.knative.dev/certificate-provider!=cert-manager 
  -f https://github.com/knative/serving/releases/download/v0.7.0/monitoring-tracing-zipkin-in-mem.yaml