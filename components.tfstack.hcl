component "pet" {
  source = "./upstream-workload"

  inputs = {
    prefix = var.prefix
  }

  providers = {
    random = provider.random.this
  }
}

output "name" {
  value = component.pet.name
  type = string
  
}