# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "loadtest_1" {
  for_each = var.inputs
  inputs = {
    prefix    = each.value.prefix
    instances = each.value.instances
  }
}
