resource "helm_release" "nginx_app" {
  name       = var.release_name
  chart      = var.chart_path
  namespace  = "default"
  values     = [file("${var.chart_path}/values.yaml")]
}
