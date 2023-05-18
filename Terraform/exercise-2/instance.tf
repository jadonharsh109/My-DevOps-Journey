resource "aws_instance" "letsgooo" {
  ami                    = var.AMIS.amazon
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE
  key_name               = "start"
  vpc_security_group_ids = ["sg-00ba5188aa9549d63"]
  tags = {
    Name = "Instance 2"
  }

}
