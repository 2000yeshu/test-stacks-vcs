This repo will contain pet nulls configuration

To set the number of resources in each deployment(r), we set the number of instances.

To set the number of components per deployment(c), we set the length of prefixes to half the desired number(m2).

``python3 generate_deployments d r c``

Deployments Components Resources
10
1000
4

10
1
10000



``python3 generate_deployments 10 1 2``
``python3 generate_deployments 10 4 10``
``python3 generate_deployments 10 5 1``