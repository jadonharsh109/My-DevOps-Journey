resource "aws_instance" "first-instance" {
  ami                    = "ami-053b0d53c279acc90"
  instance_type          = "t2.micro"
  key_name               = "ssh-key"
  vpc_security_group_ids = ["sg-0338a819ee5aa87aa"]
  tags = {
    "Name" = "Terraform-instance"
  }
}

output "ssh" {
  value = "ssh -i ssh-key.pem ubuntu@${aws_instance.first-instance.public_dns}"
}
