component "pet" {
  source = "./upstream-workload"

  inputs = {
    prefix = var.prefix
  }

  providers = {
    random = provider.random.this
  }
}


publish_output "pet_name" {
  description = "The name of the randomly generated pet"
  value = component.pet.name
}