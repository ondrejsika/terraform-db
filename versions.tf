terraform {
  required_providers {
    mysql = {
      source = "terraform-providers/mysql"
    }
    postgresql = {
      source = "cyrilgdn/postgresql"
    }
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
  required_version = ">= 0.13"
}
