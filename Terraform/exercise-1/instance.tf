provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "letsgooo" {
  ami                    = "ami-007855ac798b5175e"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "start"
  vpc_security_group_ids = ["sg-00ba5188aa9549d63"]
  tags = {
    Name = "Instance 1"
  }

}
