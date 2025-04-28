# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "loadtest_1" {
  inputs = {
    prefixes    = toset(["prefix_1", "prefix_2", "prefix_3"])
    instances = 3
  }
}

# deployment "loadtest_2" {
#   inputs = {
#     prefix    = "loadtest_2"
#     instances = 5
#   }
# }

# deployment "loadtest_3" {
#   inputs = {
#     prefix    = "loadtest_3"
#     instances = 5
#   }
# }
