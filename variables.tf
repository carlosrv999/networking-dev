locals {
  common_tags = {
    project     = "demo"
    owner       = "Carlos Ramirez"
    environment = "dev"
  }
}

variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

variable "region" {
  type = string
}

variable "project_id" {
  type = string
}
