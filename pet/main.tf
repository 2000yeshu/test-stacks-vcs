variable "prefixes" {
  type = number
}

# Generate a random prefix name of length __prefixes__
resource "random_id" "pets" {
  count = var.prefixes
  byte_length = 4
}

# For each prefix, generate a random pet name
resource "random_pet" "this" {
  for_each = random_id.pets
  prefix = each.value
  length = 3
}

output "prefixes" {
  # value = random_pet.this.id
  value = [for n in random_pet.this: n.id]
}



