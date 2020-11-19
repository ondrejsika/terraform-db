terraform {
  required_providers {
    mysql = {
      source = "terraform-providers/mysql"
    }
    postgresql = {
      source = "cyrilgdn/postgresql"
    }
  }
  required_version = ">= 0.13"
}
