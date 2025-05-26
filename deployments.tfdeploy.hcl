# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "deployment_1" {
  inputs = {
    pet_resources_per_component  = 6

    # Append nulls_instances-1 because 1 sleep resource is already there
    null_resources_per_component = 5
  }
}

deployment "deployment_2" {
  inputs = {
    pet_resources_per_component  = 6

    # Append nulls_instances-1 because 1 sleep resource is already there
    null_resources_per_component = 5
  }
}

deployment "deployment_3" {
  inputs = {
    pet_resources_per_component  = 6

    # Append nulls_instances-1 because 1 sleep resource is already there
    null_resources_per_component = 5
  }
}

deployment "deployment_4" {
  inputs = {
    pet_resources_per_component  = 6

    # Append nulls_instances-1 because 1 sleep resource is already there
    null_resources_per_component = 5
  }
}

deployment "deployment_5" {
  inputs = {
    pet_resources_per_component  = 6

    # Append nulls_instances-1 because 1 sleep resource is already there
    null_resources_per_component = 5
  }
}
