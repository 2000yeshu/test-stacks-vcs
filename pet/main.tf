variable "no_of_pets" {
  type = number
}

# For each prefix, generate a random pet name
resource "random_pet" "this" {
  count =  var.no_of_pets
  prefix = "pet"
  length = 3
}

resource "random_uuid" "uuid" {}

# Resource that always changes on every plan
resource "null_resource" "always_change" {
  triggers = {
    always_run = timestamp()
  }
}

output "name" {
  value = [for n in random_pet.this: n.id]
}

output "uuid" {
  value = random_uuid.uuid.id
}