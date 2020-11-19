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

resource "mysql_user" "cestyzmenycz_old" {
  user = "cestyzmenycz_old"
  host = "%"
  plaintext_password = "cestynekam33"
}

resource "mysql_database" "cestyzmenycz_old" {
  name = "cestyzmenycz_old"
}

resource "mysql_grant" "cestyzmenycz_old" {
  user = "${mysql_user.cestyzmenycz_old.user}"
  host = "%"
  database = "${mysql_database.cestyzmenycz_old.name}"
  privileges = ["ALL PRIVILEGES"]
}

resource "mysql_user" "cestyzmenycz_new" {
  user = "cestyzmenycz_new"
  host = "%"
  plaintext_password = "cestynekam44"
}

resource "mysql_database" "cestyzmenycz_new" {
  name = "cestyzmenycz_new"
}

resource "mysql_grant" "cestyzmenycz_new" {
  user = "${mysql_user.cestyzmenycz_new.user}"
  host = "%"
  database = "${mysql_database.cestyzmenycz_new.name}"
  privileges = ["ALL PRIVILEGES"]
}

resource "mysql_user" "srpocz2" {
  user = "srpocz2"
  host = "%"
  plaintext_password = "srposrpoo"
}

resource "mysql_database" "srpocz2" {
  name = "srpocz2"
}

resource "mysql_grant" "srpocz2" {
  user = "${mysql_user.srpocz2.user}"
  host = "%"
  database = "${mysql_database.srpocz2.name}"
  privileges = ["ALL PRIVILEGES"]
}

resource "mysql_user" "srpocz3" {
  user = "srpocz3"
  host = "%"
  plaintext_password = "srposrpoo99"
}

resource "mysql_database" "srpocz3" {
  name = "srpocz3"
}

resource "mysql_grant" "srpocz3" {
  user = "${mysql_user.srpocz3.user}"
  host = "%"
  database = "${mysql_database.srpocz3.name}"
  privileges = ["ALL PRIVILEGES"]
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
