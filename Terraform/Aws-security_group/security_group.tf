resource "aws_security_group" "terraform_security_group" {
  name        = "terraform_security_group"
  description = "terraform_security_group is craeted by terraform"

  dynamic "ingress" {
    for_each = [80, 443, 22, 3306]
    iterator = port

    content {
      description = "Rule by terraform"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

  }



}
