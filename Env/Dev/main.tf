module "aws-dev" {
  source = "../../Infra"

  regiao_aws = "us-east-2"
  chave      = "Key-IaC-Dev"
  instancia   = "t3.micro"
}