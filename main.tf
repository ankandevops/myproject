provider "aws" {
  region     = var.region
  access_key = file("${path.module}/access.txt")
  secret_key = file("${path.module}/secret.txt")
}

resource "aws_instance" "myec2" {
  ami           = var.ami-id
  instance_type = lookup(var.instance_type, terraform.workspace)

  tags = {
    Name   = "myec2"
    
  }

  
}
