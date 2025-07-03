replicaCount: 1
image:
  repository: nginx
  tag: latest
  pullPolicy: IfNotPresent
service:
  type: ClusterIP
  port: 80
ingress:
  enabled: true
  className: nginx
  host: nginx.local
  path: /
autoscaling:
  enabled: false
htmlContent: <<EOF
${html_content}
EOF
