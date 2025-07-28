
# One upstream deployment with one component and one resource
deployment "pet_new" {
  inputs = {
    prefix = "pet"
  }
}



# Insert downstream deployments here