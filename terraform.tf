variable "mysql_host" {}
variable "mysql_port" {}
variable "mysql_username" {}
variable "mysql_password" {}

provider "mysql" {
  endpoint = "${var.mysql_host}:${var.mysql_port}"
  username = "${var.mysql_username}"
  password = "${var.mysql_password}"
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
