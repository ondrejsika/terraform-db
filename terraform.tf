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
  username = var.mysql_username
  password = var.mysql_password
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
  plaintext_password = "halucinogenizaba22"
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

resource "postgresql_role" "trainingcrm_sika_io" {
  name     = "trainingcrm_sika_io"
  login    = true
  password = "pisusisvojecrmvole"
}


resource "postgresql_database" "trainingcrm_sika_io" {
  name              = "trainingcrm_sika_io"
  owner             = postgresql_role.trainingcrm_sika_io.name
  template          = "template0"
  lc_collate        = "en_US.utf8"
  lc_ctype          = "en_US.utf8"
  connection_limit  = -1
  allow_connections = true
}

resource "postgresql_role" "trainingcrm_demo_sika_io" {
  name     = "trainingcrm_demo_sika_io"
  login    = true
  password = "pisusisvojecrmvole"
}


resource "postgresql_database" "trainingcrm_demo_sika_io" {
  name              = "trainingcrm_demo_sika_io"
  owner             = postgresql_role.trainingcrm_sika_io.name
  template          = "template0"
  lc_collate        = "en_US.utf8"
  lc_ctype          = "en_US.utf8"
  connection_limit  = -1
  allow_connections = true
}


resource "postgresql_role" "democloud" {
  name     = "democloud"
  login    = true
  password = "democlouddemo"
}


resource "postgresql_database" "democloud" {
  name              = "democloud"
  owner             = postgresql_role.democloud.name
  template          = "template0"
  lc_collate        = "en_US.utf8"
  lc_ctype          = "en_US.utf8"
  connection_limit  = -1
  allow_connections = true
}

resource "postgresql_database" "democloud_demo" {
  name              = "democloud_demo"
  owner             = postgresql_role.democloud.name
  template          = "template0"
  lc_collate        = "en_US.utf8"
  lc_ctype          = "en_US.utf8"
  connection_limit  = -1
  allow_connections = true
}

