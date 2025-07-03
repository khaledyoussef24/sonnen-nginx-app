provider "kubernetes" {
  config_path = "~/.kube/config"
}

module "nginx_app" {
  source           = "../../modules/k8s_app"
  environment      = var.environment
  html_path        = var.html_path
  helm_chart_path  = var.helm_chart_path
}
