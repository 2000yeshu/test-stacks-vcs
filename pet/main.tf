variable "no_of_pets" {
  type = number
}

# For each prefix, generate a random pet name
resource "random_pet" "this" {
  count =  var.no_of_pets
  prefix = "pet"
  length = 3
}

output "name" {
  # value = random_pet.this.id
  value = [for n in random_pet.this: n.id]
}



