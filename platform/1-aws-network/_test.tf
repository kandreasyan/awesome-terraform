resource "random_pet" "test" {
  length = 3
}

ephemeral "random_password" "test" {
  length           = 16
  special          = false
}

resource "random_pet" "test1" {
  length = 3
}

output "pet_name" {
  value = random_pet.test.id
}
