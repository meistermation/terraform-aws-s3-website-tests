terraform {
  required_providers {
    http = {
      source  = "hashicorp/http"
      version = "3.4.0"
    }
  }
}

variable "endpoint" {
  description = "The endpoint to send requests to."
  type        = string
}

data "http" "index" {
  url    = var.endpoint
  method = "GET"
}
