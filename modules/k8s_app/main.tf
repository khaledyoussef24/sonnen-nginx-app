resource "kubernetes_config_map" "html" {
  metadata {
    name = "nginx-static-html-${var.environment}"
  }
  data = {
    index.html = file(var.html_path)
  }
}

resource "helm_release" "nginx" {
  name       = "nginx-${var.environment}"
  repository = "file://${var.helm_chart_path}"
  chart      = "."

  values = [templatefile("${path.module}/helm-values.tpl", {
    html_content = file(var.html_path)
  })]
}
