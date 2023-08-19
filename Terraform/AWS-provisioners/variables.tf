variable "aws_access_key" {
  type = string
}
variable "aws_secreat_key" {
  type = string

}
variable "sg_ports" {
  type = list(number)
}

variable "ami_id" {
  type = string
}
variable "instance_type" {
  type = string
}






