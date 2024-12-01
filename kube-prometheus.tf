module "kube_prometheus_stack" {
  source  = "sparkfabrik/prometheus-stack/sparkfabrik"
  version = "4.0.0"
  count  = local.kube_prometheus_enabled ? 1 : 0

  prometheus_stack_chart_version     = "66.3.0"
  namespace                          = "kube-prometheus-stack"
  prometheus_stack_additional_values = ["${file("${path.module}/files/kube-prometheus-stack-additional-values.yaml")}"]
}