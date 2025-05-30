# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "deployment_1" {
  inputs = {
    pet_resources_per_component  = 7

    # Append nulls_instances-1 because 1 sleep resource is already there
    null_resources_per_component = 0
  }
}

publish_output "output_string" {
  value = deployment.deployment_1.pet_name
}