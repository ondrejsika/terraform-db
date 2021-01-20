module "chatahurkycz" {
  source   = "ondrejsika/mysql-db-with-user/module"
  version  = "1.1.0"
  db       = "chatahurkycz"
  password = "halucinogenizaba22"
}

module "pecihradekcz" {
  source   = "ondrejsika/mysql-db-with-user/module"
  version  = "1.1.0"
  db       = "pecihradekcz"
  password = "halucinogenizaba33"
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

module "sedastrelacz" {
  source   = "ondrejsika/mysql-db-with-user/module"
  version  = "1.1.0"
  db       = "sedastrelacz"
  password = "ss53ss53ss53"
}
