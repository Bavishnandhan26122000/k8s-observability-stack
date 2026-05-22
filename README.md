# k8s-observability-stack

This repository contains Infrastructure as Code (IaC) to deploy a complete observability suite onto a Kubernetes cluster.

## Architecture

* **Prometheus**: Metrics collection and aggregation.
* **Grafana**: Dashboards and visualization.
* **Splunk OpenTelemetry Collector**: Log forwarding and trace collection to Splunk.

## Technologies Used

* Terraform
* Helm
* Kubernetes

## Setup Instructions

1. Ensure you have a running Kubernetes cluster and your `~/.kube/config` is properly configured.
2. Provide your Splunk credentials in a `terraform.tfvars` file or as environment variables.
3. Initialize Terraform:
   ```bash
   terraform init
   ```
4. Apply the configuration:
   ```bash
   terraform apply
   ```

## Modules

* `prometheus-grafana`: Deploys the `kube-prometheus-stack` Helm chart.
* `splunk-forwarder`: Deploys the `splunk-otel-collector` Helm chart.
