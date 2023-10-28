provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "nri-bundle" {
  name       = "nri-bundle"
  repository = "https://helm-charts.newrelic.com"
  chart      = "nri-bundle"
  create_namespace = true
  namespace  = "newrelic"

  values = [
    file("values.yaml")
  ]
}