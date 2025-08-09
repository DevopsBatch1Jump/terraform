provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  key_name                    = var.key_name

  tags = {
    Name = "ExampleInstance-${count.index + 1}"
  }

  count = var.instance_count

  lifecycle {
    prevent_destroy = false
  }
}



