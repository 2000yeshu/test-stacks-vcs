
# One upstream deployment with one component and one resource
deployment "pet_new_new" {
  inputs = {
    prefix = "pet"
    timestamp = timestamp()
  }
}

publish_output "pet_name" {
  description = "The name of the randomly generated pet"
  value = deployment.pet_new_new.name
}