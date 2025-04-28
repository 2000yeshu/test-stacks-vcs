variable "prefixes" {
  type = set(string)
  default = ["prefix_1", "prefix_2", "prefix_3"]
}

variable "instances" {
  type = number
}