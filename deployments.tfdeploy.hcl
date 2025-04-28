# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "loadtest_1" {
  inputs = {
    prefixes  = ["prefix_6", "prefix_8", "prefix_3", "prefix_1", "prefix_9"]
    instances = 4
  }
}

deployment "loadtest_2" {
  inputs = {
    prefixes  = ["prefix_3", "prefix_6", "prefix_9", "prefix_8", "prefix_1"]
    instances = 4
  }
}

deployment "loadtest_3" {
  inputs = {
    prefixes  = ["prefix_2", "prefix_7", "prefix_4", "prefix_5", "prefix_1"]
    instances = 4
  }
}

deployment "loadtest_4" {
  inputs = {
    prefixes  = ["prefix_10", "prefix_5", "prefix_7", "prefix_3", "prefix_1"]
    instances = 4
  }
}

deployment "loadtest_5" {
  inputs = {
    prefixes  = ["prefix_1", "prefix_8", "prefix_10", "prefix_3", "prefix_9"]
    instances = 4
  }
}

deployment "loadtest_6" {
  inputs = {
    prefixes  = ["prefix_8", "prefix_4", "prefix_7", "prefix_5", "prefix_6"]
    instances = 4
  }
}

deployment "loadtest_7" {
  inputs = {
    prefixes  = ["prefix_7", "prefix_6", "prefix_1", "prefix_10", "prefix_3"]
    instances = 4
  }
}

deployment "loadtest_8" {
  inputs = {
    prefixes  = ["prefix_1", "prefix_2", "prefix_10", "prefix_6", "prefix_7"]
    instances = 4
  }
}

deployment "loadtest_9" {
  inputs = {
    prefixes  = ["prefix_10", "prefix_1", "prefix_9", "prefix_7", "prefix_2"]
    instances = 4
  }
}

deployment "loadtest_10" {
  inputs = {
    prefixes  = ["prefix_7", "prefix_9", "prefix_8", "prefix_3", "prefix_6"]
    instances = 4
  }
}
