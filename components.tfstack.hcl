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

component "pet_2" {
  source = "./pet"
  inputs = {
    no_of_pets = var.pet_resources_per_component
  }

  providers = {
    random = provider.random.this
    time   = provider.time.this
  }
}

component "pet_3" {
  source = "./pet"
  inputs = {
    no_of_pets = var.pet_resources_per_component
  }

  providers = {
    random = provider.random.this
    time   = provider.time.this
  }
}

component "pet_4" {
  source = "./pet"
  inputs = {
    no_of_pets = var.pet_resources_per_component
  }

  providers = {
    random = provider.random.this
    time   = provider.time.this
  }
}

component "pet_5" {
  source = "./pet"
  inputs = {
    no_of_pets = var.pet_resources_per_component
  }

  providers = {
    random = provider.random.this
    time   = provider.time.this
  }
}

component "nulls_1" {
  source = "./nulls"

  inputs = {
    pet      = component.pet_1.name
    instances = var.null_resources_per_component
  }

  providers = {
    null = provider.null.this
    time = provider.time.this
  }
}

component "nulls_2" {
  source = "./nulls"

  inputs = {
    pet      = component.pet_2.name
    instances = var.null_resources_per_component
  }

  providers = {
    null = provider.null.this
    time = provider.time.this
  }
}

component "nulls_3" {
  source = "./nulls"

  inputs = {
    pet      = component.pet_3.name
    instances = var.null_resources_per_component
  }

  providers = {
    null = provider.null.this
    time = provider.time.this
  }
}

component "nulls_4" {
  source = "./nulls"

  inputs = {
    pet      = component.pet_4.name
    instances = var.null_resources_per_component
  }

  providers = {
    null = provider.null.this
    time = provider.time.this
  }
}

component "nulls_5" {
  source = "./nulls"

  inputs = {
    pet      = component.pet_5.name
    instances = var.null_resources_per_component
  }

  providers = {
    null = provider.null.this
    time = provider.time.this
  }
}
