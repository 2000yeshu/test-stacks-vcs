
# One upstream deployment with one component and one resource
deployment "pet_new_new" {
  inputs = {
    prefix = "pet"
    timestamp = "Mon Jul 28 2025 17:52:24 GMT+0530 (India Standard Time)"
  }
}

publish_output "pet_name" {
  description = "The name of the randomly generated pet"
  value = deployment.pet_new_new.name
}