# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

component "pet_1" {
  source   = "./pet"
  inputs = {
    prefixes = var.prefixes
  }

  providers = {
    random = provider.random.this
    time   = provider.time.this
  }

}

component "pet_2" {
  source   = "./pet"

  inputs = {
    prefixes = var.prefixes
  }

  providers = {
    random = provider.random.this
    time   = provider.time.this
  }

}

component "nulls" {
  for_each = component.pet
  source   = "./nulls"

  inputs = {
    pets      = each.value.name
    instances = var.nulls_instances
  }

  providers = {
    null = provider.null.this
    time = provider.time.this
  }
}