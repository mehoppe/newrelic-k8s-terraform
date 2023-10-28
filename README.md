# New Relic k8s Instrumentation Terraform

## Prequisites
1. Kubernetes cluster
2. kubectl configured
3. terraform configured
4. New Relic account
5. New Relic license key (ingest key)

## New Relic Helm Charts
Refer to the New Relic documentation for configuring your values file. The values.yaml file should be specificed within main.tf.
Ref: https://github.com/newrelic/helm-charts/tree/master

### Sample values.yaml File
```
global:  
  licenseKey: YOUR_LICENSE_KEY 
  cluster: YOUR_CLUSTER_NAME  
nri-infrastructure:
  enabled: true
nri-kube-events:  
  enabled: true  
nri-metadata-injection:  
  enabled: true  
nri-prometheus:  
  enabled: true  
newrelic-logging:  
  enabled: true  
kube-state-metrics:  
  enabled: true  
  ```


