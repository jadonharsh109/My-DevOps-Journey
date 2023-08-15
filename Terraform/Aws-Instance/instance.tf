resource "aws_instance" "first-instance" {
  ami                    = "ami-053b0d53c279acc90"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.terraform-key-pair.key_name
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
  value = "ssh -i ${aws_instance.first-instance.key_name}.pem ubuntu@${aws_instance.first-instance.public_dns}"
}

resource "aws_key_pair" "terraform-key-pair" {
  key_name   = "terraform"
  public_key = file("${path.module}/id_rsa.pub")
}
