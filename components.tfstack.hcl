component "pet" {
  source = "./upstream-workload"

  inputs = {
    prefix = var.prefix
  }

  providers = {
    random = provider.random.this
  }
}