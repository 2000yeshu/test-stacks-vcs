# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

component "pet" {
  for_each = var.prefixes
  source = "./pet"

  inputs = {
    prefix = each.value
  }

  providers = {
    random = provider.random.this
  }
}

component "nulls" {
  for_each = component.pet
  source = "./nulls"

  inputs = {
    pet       = each.value.name
    instances = var.instances
  }

  providers = {
    null = provider.null.this
  }
}