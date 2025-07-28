variable "prefix" {
  type        = string
  description = "A prefix for the pet name"
}

variable timestamp {
  type        = string
  description = "A timestamp to ensure resource uniqueness"
}

resource "random_pet" "this" {
  length = 3
  prefix = var.prefix

  keepers = {
    timestamp = var.timestamp
  }
}

output "name" {
  value = random_pet.this.id
}
