resource "random_pet" "test" {
  length = 2
}

ephemeral "random_password" "test" {
  length           = 16
  special          = false
}

output "pet_name" {
  value = random_pet.test.id
}
