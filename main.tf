provider "aws" {
    region = var.region
    access_key = var.aws_access_key_id
    secret_key = var.aws_secret_access_key
}

resource "aws_instance" "production_lol" {
  ami = "ami-05ee09b16a3aaa2fd"
  instance_type = "t2.micro"

  tags = {
    Name = "dnipro-server"
  }
}
