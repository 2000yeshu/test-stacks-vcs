import sys
import argparse

resources_dir = '.'

def main():
    parser = argparse.ArgumentParser(description="Generate Stack Configuration.")
    parser.add_argument('--deployments', type=int, required=True, help='Number of deployments')
    parser.add_argument('--pet-components-per-deployment', type=int, required=True, help='Number of pet components per deployment')
    parser.add_argument('--nulls-components-per-deployment', type=int, required=True, help='Number of nulls components per deployment')
    parser.add_argument('--pet-resources', type=int, required=True, help='Number of pet resources per component')
    parser.add_argument('--nulls-resources', type=int, required=True, help='Number of nulls resources per component')

    args = parser.parse_args()

    num_deployments = args.deployments
    num_pet_components_per_deployment = args.pet_components_per_deployment
    num_nulls_components_per_deployment = args.nulls_components_per_deployment
    num_pet_instances = args.pet_resources
    num_nulls_instances = args.nulls_resources

    if num_pet_components_per_deployment < 1:
        print("WARN: Number of pet components cannot be less than 1.")
        sys.exit(1)

    if num_pet_instances < 1 or num_nulls_instances < 1:
        print("ERR: Number of pet or nulls instances cannot be less than 1.")
        sys.exit(1)

    
    # Loop and create pet components
    component_blocks = []
    for i in range(1, num_pet_components_per_deployment + 1):
        name = f"pet_{i}"
        block = f'''component "{name}" {{
  source = "./pet"
  inputs = {{
    no_of_pets = var.pet_resources_per_component
  }}

  providers = {{
    random = provider.random.this
    time   = provider.time.this
  }}
}}\n'''
        component_blocks.append(block)

    # Add nulls component block if condition is met
    if num_nulls_components_per_deployment > 0 and num_nulls_components_per_deployment != num_pet_components_per_deployment:
            print("ERR: Nulls components not zero and not equal to pet components")
            sys.exit(1)

    for i in range(1, num_nulls_components_per_deployment + 1):
        name = f"nulls_{i}"
        pet_name = f"pet_{i}"

        block = f'''component "{name}" {{
  source = "./nulls"

  inputs = {{
    pet      = component.{pet_name}.name
    instances = var.null_resources_per_component
  }}

  providers = {{
    null = provider.null.this
    time = provider.time.this
  }}
}}\n'''
        component_blocks.append(block)

    with open(f"{resources_dir}/components.tfstack.hcl", "w") as f:
            f.write("\n".join(component_blocks))


    blocks = [
        '# Copyright (c) HashiCorp, Inc.',
        '# SPDX-License-Identifier: MPL-2.0',
        ''
    ]

    for i in range(1, num_deployments + 1):
        name = f"deployment_{i}"
        
        block = f'''deployment "{name}" {{
  inputs = {{
    pet_resources_per_component  = {num_pet_instances}

    # Append nulls_instances-1 because 1 sleep resource is already there
    null_resources_per_component = {num_nulls_instances-1}
  }}
}}\n'''
        blocks.append(block)

    with open(f"{resources_dir}/deployments.tfdeploy.hcl", "w") as f:
        f.write("\n".join(blocks))
    print(f"Generated {num_deployments} deployment blocks in deployments.tfdeploy.hcl with {num_pet_components_per_deployment} pet each and {num_nulls_components_per_deployment} nulls each and total {num_nulls_instances} nulls instances.")

if __name__ == "__main__":
    main()
