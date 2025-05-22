import sys
import random

pet_component = [
        '# Copyright (c) HashiCorp, Inc.',
        '# SPDX-License-Identifier: MPL-2.0',
        '',
        'component "pet" {',
        '  for_each = var.prefixes',
        '  source = "./pet"',
        '',
        '  inputs = {',
        '    prefix = each.value',
        '  }',
        '',
        '  providers = {',
        '    random = provider.random.this',
        '  }',
        '}',
]

nulls_component = [
        '',
        'component "nulls" {',
        '  for_each = component.pet_1',
        '  source = "./nulls"',
        '',
        '  inputs = {',
        '    pet       = each.value.name',
        '    instances = var.instances',
        '  }',
        '',
        '  providers = {',
        '    null = provider.null.this',
        '  }',
        '}',
]

def main():
    if len(sys.argv) != 5:
        print("Usage: python generate_config.py <num_deployments> <num_pet_components_per_deployment> <num_nulls_components_per_deployment> <num_nulls_instances>")
        sys.exit(1)
    try:
        num_deployments = int(sys.argv[1])
        num_pet_components_per_deployment = int(sys.argv[2])
        num_nulls_components_per_deployment = int(sys.argv[3])
        num_nulls_instances = int(sys.argv[4])
    except ValueError:
        print("Please provide valid integers for all parameters.")
        sys.exit(1)

    if num_pet_components_per_deployment < 1:
        print("WARN: Number of pet components cannot be less than 1.")
        sys.exit(1)

    with open("components.tfstack.hcl", "w") as f:
            f.write("\n".join(pet_component))

    # Add nulls component block if condition is met
    if num_nulls_components_per_deployment > 0:
        if num_nulls_components_per_deployment != num_pet_components_per_deployment:
            print("ERR: Nulls components not zero and not equal to pet components")
            sys.exit(1)
        
        with open("components.tfstack.hcl", "w") as f:
            f.write("\n".join(pet_component + nulls_component))

    blocks = [
        '# Copyright (c) HashiCorp, Inc.',
        '# SPDX-License-Identifier: MPL-2.0',
        ''
    ]

    # Generate prefix pool
    # prefix_pool = [f"prefix_{i}" for i in range(1, num_components + 1)]
    # num_prefixes = num_components // 2

    for i in range(1, num_deployments + 1):
        name = f"deployment_{i}"
        # Randomly select num_prefixes from the prefix pool

        # Create num_pet_components_per_deployment number of prefixes
        selected_prefixes = [f"deployment_{i}_prefix_{j}" for j in range(1, num_pet_components_per_deployment + 1)]
        # selected_prefixes = random.sample(prefix_pool, num_prefixes)
        prefixes_str = '[' + ', '.join(f'"{prefix}"' for prefix in selected_prefixes) + ']'
        
        block = f'''deployment "{name}" {{
  inputs = {{
    prefixes  = {prefixes_str}
    instances = {num_nulls_instances}
  }}
}}\n'''
        blocks.append(block)

    with open("deployments.tfdeploy.hcl", "w") as f:
        f.write("\n".join(blocks))
    print(f"Generated {num_deployments} deployment blocks in deployments.tfdeploy.hcl with {num_pet_components_per_deployment} pet each and {num_nulls_components_per_deployment} nulls each and total {num_nulls_instances} nulls instances.")

if __name__ == "__main__":
    main()
