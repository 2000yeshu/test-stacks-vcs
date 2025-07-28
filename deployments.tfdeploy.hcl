
# One upstream deployment with one component and one resource
deployment "pet" {
  inputs = {
    prefix = "pet"
  }
}

deployment_auto_approve "no_destroys" {
    check {
        condition = context.plan.changes.remove == 0
        reason = "Plan removes ${context.plan.changes.remove} resources, which is not allowed."
    }
}

publish_output "pet_name" {
  description = "The name of the randomly generated pet"
  value = context.deployment.outputs.pet.name
}


# Insert downstream deployments here