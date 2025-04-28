# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "loadtest_1" {
  inputs = {
    prefixes  = ["prefix_9", "prefix_8", "prefix_5", "prefix_10", "prefix_3"]
    instances = 3
  }
}

deployment "loadtest_2" {
  inputs = {
    prefixes  = ["prefix_10", "prefix_6", "prefix_9", "prefix_2", "prefix_1"]
    instances = 3
  }
}
