terraform {
  backend "remote" {
    organization = "ondrejsika"
    workspaces {
      name = "db"
    }
  }
}
