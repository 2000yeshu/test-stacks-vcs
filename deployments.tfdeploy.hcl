# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "loadtest_1" {
  inputs = {
    prefixes  = ["prefix_1"]
    instances = 5
  }

  deployment_group = deployment_group.canary
}

deployment "loadtest_2" {
  inputs = {
    prefixes  = ["prefix_1"]
    instances = 5
  }

  deployment_group = deployment_group.canary
}

deployment_group "canary" {
  fault_tolerance_count = 0
  eager_plan = "on"
}

deployment "loadtest_3" {
  inputs = {
    prefixes  = ["prefix_2"]
    instances = 5
  }
}

deployment "loadtest_4" {
  inputs = {
    prefixes  = ["prefix_1"]
    instances = 5
  }
}

deployment "loadtest_5" {
  inputs = {
    prefixes  = ["prefix_2"]
    instances = 5
  }
}

deployment "loadtest_6" {
  inputs = {
    prefixes  = ["prefix_1"]
    instances = 5
  }
}

deployment "loadtest_7" {
  inputs = {
    prefixes  = ["prefix_1"]
    instances = 5
  }
}

deployment "loadtest_8" {
  inputs = {
    prefixes  = ["prefix_1"]
    instances = 5
  }
}

deployment "loadtest_9" {
  inputs = {
    prefixes  = ["prefix_2"]
    instances = 5
  }
}

deployment "loadtest_10" {
  inputs = {
    prefixes  = ["prefix_1"]
    instances = 5
  }
}
