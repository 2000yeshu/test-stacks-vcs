# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0
terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

variable "prefix" {
  type = string
}

output "name" {
  value = random_pet.this.id
}

resource "random_pet" "this" {
  prefix = var.prefix
  length = 3
}



