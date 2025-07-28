
# One upstream deployment with one component and one resource
deployment "pet" {
  inputs = {
    prefix = "pet"
  }
}

publish_output "pet_name" {
  description = "The name of the randomly generated pet"
  value = deployment.pet.name
}


# Insert downstream deployments here