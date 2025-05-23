# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

component "pet_1" {
  source = "./pet"
  inputs = {
    prefixes = var.prefixes
  }

  providers = {
    random = provider.random.this
    time   = provider.time.this
  }

}

component "pet_2" {
  source = "./pet"

  inputs = {
    prefixes = var.prefixes
  }

  providers = {
    random = provider.random.this
    time   = provider.time.this
  }

}

component "nulls_1" {
  source = "./nulls"

  inputs = {
    pet      = component.pet_1.name
    instances = var.nulls_instances
  }

  providers = {
    null = provider.null.this
    time = provider.time.this
  }
}

component "nulls_2" {
  source = "./nulls"

  inputs = {
    pet      = component.pet_2.name
    instances = var.nulls_instances
  }

  providers = {
    null = provider.null.this
    time = provider.time.this
  }
}