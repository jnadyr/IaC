module "aws-dev" {
  source = "../../Infra"

  regiao_aws = "us-east-2"
  chave      = "Key-IaC-Dev"
  instancia   = "t3.micro"
}
output "IP_publico_dev" {
  value = module.aws-dev.IP_publico
}