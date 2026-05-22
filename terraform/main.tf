module "kube_prometheus_stack" {
  source = "./modules/prometheus-grafana"

  namespace = "monitoring"
}

module "splunk_otel_collector" {
  source = "./modules/splunk-forwarder"

  namespace           = "splunk"
  splunk_access_token = var.splunk_access_token
  splunk_realm        = var.splunk_realm
}
