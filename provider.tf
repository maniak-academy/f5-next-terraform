terraform {
  required_providers {
    bigipnext = {
      source = "F5Networks/bigipnext"
      version = "1.2.2"
    }

  }
}

provider "bigipnext" {
  username = "admin"
  password = "W3lcome098!"
  host     = "https://172.16.10.130"
}

