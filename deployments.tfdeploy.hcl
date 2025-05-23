# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "deployment_1" {
  inputs = {
    prefixes        = 3
    nulls_instances = 6
  }
}

deployment "deployment_2" {
  inputs = {
    prefixes        = 3
    nulls_instances = 6
  }
}

deployment "deployment_3" {
  inputs = {
    prefixes        = 3
    nulls_instances = 6
  }
}
