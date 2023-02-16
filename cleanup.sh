#! /bin/bash -x
NAMESPACE="istioinaction"
kubectl delete deployment,svc,gateway,virtualservice,destinationrule --all --namespace "$NAMESPACE" "$@"

