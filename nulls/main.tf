# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0


# terraform {
#   required_providers {
#     time = {
#       source = "hashicorp/time"
#       version = "~>0.13"
#     }
#   }
# }

variable "pet" {
  type = string
}

variable "instances" {
  type = number
}

resource "null_resource" "this" {
  count = var.instances

  triggers = {
    pet = var.pet
  }

}

resource "time_sleep" "wait_30_seconds" {
  create_duration = "30s"
}

# Something that takes time
# resource "null_resource" "slow-provisioner" {
#   triggers = {
#     uuid = uuid()
#   }

  
# }

output "ids" {
  value = [for n in null_resource.this: n.id]
}

