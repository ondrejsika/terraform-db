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

module "chatahurkycz" {
  source   = "ondrejsika/mysql-db-with-user/module"
  version  = "1.1.0"
  db       = "chatahurkycz"
  password = "halucinogenizaba22"
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

module "cestyzmenycz_old" {
  source   = "ondrejsika/mysql-db-with-user/module"
  version  = "1.1.0"
  db       = "cestyzmenycz_old"
  password = "cestynekam33"
}

module "cestyzmenycz_new" {
  source   = "ondrejsika/mysql-db-with-user/module"
  version  = "1.1.0"
  db       = "cestyzmenycz_new"
  password = "cestynekam44"
}

module "srpocz2" {
  source   = "ondrejsika/mysql-db-with-user/module"
  version  = "1.1.0"
  db       = "srpocz2"
  password = "srposrpoo"
}

module "srpocz3" {
  source   = "ondrejsika/mysql-db-with-user/module"
  version  = "1.1.0"
  db       = "srpocz3"
  password = "srposrpoo99"
}

# BEGIN stream.sika.io

resource "postgresql_role" "stream_sika_io" {
  name     = "stream_sika_io"
  login    = true
  password = "devopslive2030"
}

resource "postgresql_database" "stream_sika_io" {
  name              = "stream_sika_io"
  owner             = postgresql_role.stream_sika_io.name
  template          = "template0"
  lc_collate        = "en_US.utf8"
  lc_ctype          = "en_US.utf8"
  connection_limit  = -1
  allow_connections = true
}

# END stream.sika.io

# BEGIN test-stream.sika.io

resource "postgresql_role" "test_stream_sika_io" {
  name     = "test_stream_sika_io"
  login    = true
  password = "devopslive2020"
}

resource "postgresql_database" "test_stream_sika_io" {
  name              = "test_stream_sika_io"
  owner             = postgresql_role.stream_sika_io.name
  template          = "template0"
  lc_collate        = "en_US.utf8"
  lc_ctype          = "en_US.utf8"
  connection_limit  = -1
  allow_connections = true
}

# END test-stream.sika.io
