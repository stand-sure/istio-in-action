#! /bin/bash
istioctl pc routes -n istio-system deploy/istio-ingressgateway --name http.8080 -o json | jq '.[] |  .virtualHosts[] | select(.name | contains("catalog")) | .routes[]'

