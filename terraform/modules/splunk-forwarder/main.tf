resource "kubernetes_namespace" "splunk" {
  metadata {
    name = var.namespace
  }
}

resource "helm_release" "splunk_otel_collector" {
  name       = "splunk-otel-collector"
  repository = "https://signalfx.github.io/splunk-otel-collector-chart"
  chart      = "splunk-otel-collector"
  namespace  = kubernetes_namespace.splunk.metadata[0].name
  version    = "0.96.1"

  set {
    name  = "splunkAccessToken"
    value = var.splunk_access_token
  }

  set {
    name  = "splunkRealm"
    value = var.splunk_realm
  }

  set {
    name  = "clusterName"
    value = "my-k8s-cluster"
  }
}
