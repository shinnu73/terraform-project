provider "aws" {
  region     = "us-east-1"
  access_key = "var.access-key"
  secret_key = "var.secret-key"
}
resource "aws_key_pair" "deployer" {
  key_name   = "deployer"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC/vJs/j5v8ZAEdRF26kPFX9KhJ+YLNAWwEdPWP4RMG4Mfu8nQj5qFduoWGL7kaZNetjHf6NOhf4uwUrHXALI52Y0PchrOU8OLzQg2uLfbD7wpp5nF1wkhcjbF5pSHSA/N3ZyMaNadlJsVN2MpQAxEZdqnPnz+Zw5n+BV5JzqlP8eHhxJLe8GVpFG//xFrkoOwvn2ZcerYBaLzFkYqRSeoDvOsqhXLtnBS3sQb7BSmUPzMD9EIpPgsVMSaRDde/HsKmfJYZxJUhAW8Ww25Mq9YGxx24++auI/GuhsVmIExzbg5+59faritD0UsJRJyFnjDawGveVaE3NmIR0KJTz/1rNso81LNBj8dF0fZDDslFgZeP5sa6mXO7DqLf24LXXE8fdPf1WttJIrQzcpFCSPbT3bs0U7xIKsF14kOB73tbt7Gr4us83ZX6AgiSl1vSmSP2uRRP1hwggHEi+On59w6nX2n43UnEHoesBJZXy2zGDqEWhybuUbPunIiIiWQnupk= admin@Shinnu"
}
resource "aws_instance" "apache" {
  ami           = var.imageid # us-west-2
  instance_type = var.instancetype[0]
  key_name      = "deployer"
  tags = {
    Name = var.tags[0]
  }
}

resource "aws_instance" "python" {
  ami           = var.imageid # us-west-2
  instance_type = var.instancetype[1]
  key_name      = "deployer"
  tags = {
    Name = var.tags[1]
  }
}

resource "aws_instance" "nginx" {
  ami           = var.imageid # us-west-2
  instance_type = var.instancetype[2]
  key_name      = "deployer"
  tags = {
    Name = var.tags[2]
  }
}
