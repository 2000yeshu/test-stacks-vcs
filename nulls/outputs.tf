
output "ids" {
  value = [for n in null_resource.this: n.id]
}
