variable "REGION" {
  default = "us-east-1"
}
variable "ZONE" {
  default = "us-east-1a"
}
variable "AMIS" {
  type = map(any)
  default = {
    amazon = "ami-0889a44b331db0194"
    ubuntu = "ami-007855ac798b5175e"
  }
}
