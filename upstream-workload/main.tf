variable "prefix" {
  type        = string
  description = "A prefix for the pet name"
}

resource "random_pet" "this" {
  length = 3
  prefix = var.prefix

#   keepers = {
#     timestamp = timestamp()
#   }
}

output "name" {
  value = random_pet.this.id
}
