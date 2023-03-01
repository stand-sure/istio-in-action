#! /bin/bash
helm upgrade --install \
  --namespace kiali-operator \
  --create-namespace \
  --set cr.create=true \
  --set cr.namespace=istio-system \
  kiali-operator \
  kiali-operator/kiali-operator
  