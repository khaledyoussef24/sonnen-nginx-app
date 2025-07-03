variable "environment" {
  description = "Environment name (staging/production)"
  type        = string
}

variable "html_path" {
  description = "Path to index.html"
  type        = string
}

variable "helm_chart_path" {
  description = "Path to the Helm chart directory"
  type        = string
}
