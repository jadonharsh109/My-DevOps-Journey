data "aws_ami" "example" {
  most_recent = true

  owners = ["099720109477"]

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-20230517"]
  }
}

output "ami_name" {
  value = data.aws_ami.example.id
}
