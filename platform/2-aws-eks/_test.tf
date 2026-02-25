output "random_pet_name" {
  value = data.terraform_remote_state.aws_network.outputs.pet_name
}