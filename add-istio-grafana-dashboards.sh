#! /bin/bash
kubectl -n monitoring create cm istio-dashboards \
  --from-file pilot-dashboard.json \
  --from-file istio-workload-dashboard.json \
  --from-file istio-service-dashboard.json \
  --from-file istio-performance-dashboard.json \
  --from-file istio-mesh-dashboard.json \
  --from-file istio-extension-dashboard.json
  
kubectl label -n monitoring cm istio-dashboards grafana_dashboard=1   
