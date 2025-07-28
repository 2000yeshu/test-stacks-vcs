component "pet" {
  source = "./upstream-workload"

  inputs = {
    prefix = var.prefix
    timestamp = var.timestamp
  }

  providers = {
    random = provider.random.this
  }
}

output "name" {
  value = component.pet.name
  type = string
  
}