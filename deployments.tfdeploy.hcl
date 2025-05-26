# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "deployment_1" {
  inputs = {
    prefixes  = 6

    # Append nulls_instances-1 because 1 sleep resource is already there
    nulls_instances = 0
  }
}

deployment "deployment_2" {
  inputs = {
    prefixes  = 6

    # Append nulls_instances-1 because 1 sleep resource is already there
    nulls_instances = 0
  }
}

deployment "deployment_3" {
  inputs = {
    prefixes  = 6

    # Append nulls_instances-1 because 1 sleep resource is already there
    nulls_instances = 0
  }
}

deployment "deployment_4" {
  inputs = {
    prefixes  = 6

    # Append nulls_instances-1 because 1 sleep resource is already there
    nulls_instances = 0
  }
}

deployment "deployment_5" {
  inputs = {
    prefixes  = 6

    # Append nulls_instances-1 because 1 sleep resource is already there
    nulls_instances = 0
  }
}
