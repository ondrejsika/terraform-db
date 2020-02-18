variable "mysql_host" {}
variable "mysql_port" {}
variable "mysql_username" {}
variable "mysql_password" {}

variable "postgres_host" {}
variable "postgres_port" {}
variable "postgres_username" {}
variable "postgres_password" {}


provider "mysql" {
  endpoint = "${var.mysql_host}:${var.mysql_port}"
  username = "${var.mysql_username}"
  password = "${var.mysql_password}"
}

provider "postgresql" {
  host     = var.postgres_host
  port     = var.postgres_port
  username = var.postgres_username
  password = var.postgres_password
  sslmode  = "disable"
}


resource "mysql_user" "chatahurkycz" {
  user = "chatahurkycz"
  host = "%"
  plaintext_password = "hroznesuperpes2019"
}

resource "mysql_database" "chatahurkycz" {
  name = "chatahurkycz"
}

resource "mysql_grant" "chatahurkycz" {
  user = "${mysql_user.chatahurkycz.user}"
  host = "%"
  database = "${mysql_database.chatahurkycz.name}"
  privileges = ["ALL PRIVILEGES"]
}
