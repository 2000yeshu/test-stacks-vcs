# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0





resource "null_resource" "this" {
  count = var.instances

  triggers = {
    pet = var.pet
  }
}
