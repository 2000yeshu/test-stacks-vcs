# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "deployment_1" {
  inputs = {
    pet_resources_per_component  = 6

    # Append nulls_instances-1 because 1 sleep resource is already there
    null_resources_per_component = 5
  }
}

publish_output "pet_resources_per_component" {
  value = deployment.deployment_1.name
}