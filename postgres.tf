# BEGIN trainingcrm.sika.io

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

# END trainingcrm.sika.io

# BEGIN trainingcrm-demo.sika.io

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

# END trainingcrm-demo.sika.io

# BEGIN democloud

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

# END democloud

# BEGIN democloud_demo

resource "postgresql_database" "democloud_demo" {
  name              = "democloud_demo"
  owner             = postgresql_role.democloud.name
  template          = "template0"
  lc_collate        = "en_US.utf8"
  lc_ctype          = "en_US.utf8"
  connection_limit  = -1
  allow_connections = true
}

# END democloud_demo

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
