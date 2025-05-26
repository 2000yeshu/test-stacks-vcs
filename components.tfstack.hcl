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

output "pet_names" {
    value = [for n in random_pet.this: n.id]
    type = list(string)
}
