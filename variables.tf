variable "region" {
  default = "us-west-2"
}

variable "cluster_endpoint" {
  sensitive = true
}

variable "cluster_ca" {
  sensitive = true
}

variable "cluster_name" {
}

