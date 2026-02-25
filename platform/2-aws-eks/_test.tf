output "random_pet_name" {
  value = data.tfe_outputs.aws_network.values.pet_name
}