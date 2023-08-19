resource "aws_instance" "terraform_ec2_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = "provisioner_key"
  vpc_security_group_ids = ["${aws_security_group.terraform_security_group.id}"]
  tags = {
    "Name" = "Terraform_Instance"
  }

  connection {
    host        = self.public_ip
    user        = "ubuntu"
    type        = "ssh"
    private_key = file("${path.module}/id_rsa")
  }

  # provisioner "file" {
  #   source      = "./web_script.sh"
  #   destination = "/tmp/website.sh"
  # }
  provisioner "remote-exec" {
    script = "./web_script.sh"
  }

}
