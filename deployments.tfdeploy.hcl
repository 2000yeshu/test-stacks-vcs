# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "deployment_1" {
  inputs = {
    prefixes  = ["deployment_1_prefix_1", "deployment_1_prefix_2", "deployment_1_prefix_3", "deployment_1_prefix_4"]
    instances = 6
  }
}

deployment "deployment_2" {
  inputs = {
    prefixes  = ["deployment_2_prefix_1", "deployment_2_prefix_2", "deployment_2_prefix_3", "deployment_2_prefix_4"]
    instances = 6
  }
}

deployment "deployment_3" {
  inputs = {
    prefixes  = ["deployment_3_prefix_1", "deployment_3_prefix_2", "deployment_3_prefix_3", "deployment_3_prefix_4"]
    instances = 6
  }
}
