import sys
import random

def main():
    if len(sys.argv) != 2:
        print("Usage: python generate_config.py <num_deployments>")
        sys.exit(1)
    try:
        num_deployments = int(sys.argv[1])
    except ValueError:
        print("Please provide a valid integer for number of deployments.")
        sys.exit(1)

    blocks = [
        '# Copyright (c) HashiCorp, Inc.',
        '# SPDX-License-Identifier: MPL-2.0',
        ''
    ]

    for i in range(1, num_deployments + 1):
        name = f"loadtest_{i}"
        prefix = name
        instances = random.randint(1, 10)  # Randomize for load
        block = f'''deployment "{name}" {{
  inputs = {{
    prefix    = "{prefix}"
    instances = {instances}
  }}
}}\n'''
        blocks.append(block)

    with open("deployments.tfdeploy.hcl", "w") as f:
        f.write("\n".join(blocks))
    print(f"Generated {num_deployments} deployment blocks in deployments.tfdeploy.hcl.")

if __name__ == "__main__":
    main()
