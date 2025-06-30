output "service_node_port" {
  description = "NodePort where NGINX is exposed"
  value       = helm_release.nginx_app.service[0].node_port
}
