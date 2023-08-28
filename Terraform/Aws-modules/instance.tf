module "web-server" {
  source = "./modules/web-server"
  ami_id = var.ami_id
}

output "pub_ip_addr" {
  value = module.web-server.Public_IP
}
output "pvt_ip_addr" {
  value = module.web-server.Private_IP
}
output "ssh_addr" {
  value = module.web-server.ssh
}

