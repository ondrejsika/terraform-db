variable "mysql_host" {}
variable "mysql_port" {}
variable "mysql_username" {}
variable "mysql_password" {}

provider "mysql" {
  endpoint = "${var.mysql_host}:${var.mysql_port}"
  username = var.mysql_username
  password = var.mysql_password
}

variable "postgres_host" {}
variable "postgres_port" {}
variable "postgres_username" {}
variable "postgres_password" {}

provider "postgresql" {
  host     = var.postgres_host
  port     = var.postgres_port
  username = var.postgres_username
  password = var.postgres_password
  sslmode  = "disable"
}

variable "digitalocean_token" {}

provider "digitalocean" {
  token = var.digitalocean_token
}
