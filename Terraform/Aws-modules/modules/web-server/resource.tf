resource "aws_instance" "first-instance" {
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  key_name               = "ssh-key.pem"
  vpc_security_group_ids = ["sg-0338a819ee5aa87aa"]
  tags = {
    "Name" = "Terraform-instance"
  }
}

output "Public_IP" {
  value = aws_instance.first-instance.public_ip
}

output "Private_IP" {
  value = aws_instance.first-instance.private_ip
}

output "ssh" {
  value = "ssh -i ssh-key.pem ubuntu@${aws_instance.first-instance.public_dns}"
}
