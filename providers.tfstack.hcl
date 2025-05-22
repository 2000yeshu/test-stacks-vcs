required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.5.1"
  }

  null = {
    source  = "hashicorp/null"
    version = "~> 3.2.2"
  }

  time = {
    source  = "hashicorp/time"
    version = "~> 0.13"
  }
}

provider "random" "this" {}
provider "null" "this" {}
provider "time" "this" {}
