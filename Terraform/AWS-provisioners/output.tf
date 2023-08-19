output "aws_public_key" {
  value = file("${path.module}/instance.tf")
}
