resource "aws_key_pair" "my_key_pair" {
  key_name   = "provisioner_key"
  public_key = file("${path.module}/id_rsa.pub")
}
