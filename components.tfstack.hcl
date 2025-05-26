component "pet_1" {
  source = "./pet"
  inputs = {
    no_of_pets = var.pet_resources_per_component
  }

  providers = {
    random = provider.random.this
    time   = provider.time.this
  }
}

output "pet_name" {
  value = component.pet_1.name
    type = list(string)
}
