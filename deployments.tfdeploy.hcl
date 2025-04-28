# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "loadtest_1" {
  inputs = {
    prefix    = "loadtest_1"
    instances = 3
  }
}

deployment "loadtest_2" {
  inputs = {
    prefix    = "loadtest_2"
    instances = 10
  }
}

deployment "loadtest_3" {
  inputs = {
    prefix    = "loadtest_3"
    instances = 3
  }
}

deployment "loadtest_4" {
  inputs = {
    prefix    = "loadtest_4"
    instances = 8
  }
}

deployment "loadtest_5" {
  inputs = {
    prefix    = "loadtest_5"
    instances = 10
  }
}
