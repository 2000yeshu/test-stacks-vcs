variable "prefixes" {
  type = number
}

# For each prefix, generate a random pet name
resource "random_pet" "this" {
  # count =  var.prefixes
  prefix = "pet"
  length = 3
}

output "name" {
  value = random_pet.this.id
  # value = [for n in random_pet.this: n.id]
}



