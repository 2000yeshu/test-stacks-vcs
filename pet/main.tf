# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0



resource "random_pet" "this" {
  prefix = var.prefix
  length = 3
}



