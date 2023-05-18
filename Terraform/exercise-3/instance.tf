resource "aws_key_pair" "key1" {
  key_name   = "terraform_key"
  public_key = file("key.pub")
}

resource "aws_instance" "letsgooo" {
  ami                    = var.AMIS.ubuntu
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE
  key_name               = "terraform_key"
  vpc_security_group_ids = ["sg-00ba5188aa9549d63"]
  tags = {
    Name = "Instance 3"
  }

  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod u+x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }

  connection {
    user        = "ubuntu"
    private_key = file("key")
    host        = self.public_ip
  }

}

