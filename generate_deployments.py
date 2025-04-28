import sys
import random

def main():
    if len(sys.argv) != 4:
        print("Usage: python generate_config.py <num_deployments> <num_resources> <num_components>")
        sys.exit(1)
    try:
        num_deployments = int(sys.argv[1])
        num_resources = int(sys.argv[2])
        num_components = int(sys.argv[3])
    except ValueError:
        print("Please provide valid integers for all parameters.")
        sys.exit(1)

    if num_components < 2:
        print("Number of components must be at least 2.")
        sys.exit(1)

    blocks = [
        '# Copyright (c) HashiCorp, Inc.',
        '# SPDX-License-Identifier: MPL-2.0',
        ''
    ]

    # Generate prefix pool
    prefix_pool = [f"prefix_{i}" for i in range(1, num_components + 1)]
    num_prefixes = num_components // 2

    for i in range(1, num_deployments + 1):
        name = f"loadtest_{i}"
        # Randomly select num_prefixes from the prefix pool
        selected_prefixes = random.sample(prefix_pool, num_prefixes)
        prefixes_str = '[' + ', '.join(f'"{prefix}"' for prefix in selected_prefixes) + ']'
        
        block = f'''deployment "{name}" {{
  inputs = {{
    prefixes  = {prefixes_str}
    instances = {num_resources}
  }}
}}\n'''
        blocks.append(block)

    with open("deployments.tfdeploy.hcl", "w") as f:
        f.write("\n".join(blocks))
    print(f"Generated {num_deployments} deployment blocks in deployments.tfdeploy.hcl with {num_resources} nulls instances each and total {num_components} components per deployment.")

if __name__ == "__main__":
    main()
