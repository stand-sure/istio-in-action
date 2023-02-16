#! /bin/bash
kubectl get gateways --output yaml "$@" | yq ' .items[] | { "name": .metadata.name, "kind": .kind, "spec": .spec }'
kubectl get virtualservices --output yaml "$@" | yq ' .items[] | { "name": .metadata.name, "kind": .kind, "spec": .spec }'
kubectl get destinationrules --output yaml "$@" | yq ' .items[] | { "name": .metadata.name, "kind": .kind, "spec": .spec }'

