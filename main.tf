resource "aws_subnet" "infra_internal" {
  vpc_id = data.terraform_remote_state.terraform-cloud-tier1.outputs.vpc_infra.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "infra_internal"
  }
}

resource "aws_subnet" "infra_external" {
  vpc_id = data.terraform_remote_state.terraform-cloud-tier1.outputs.vpc_infra.id
  cidr_block = "10.0.100.0/24"

  tags = {
    Name = "infra_external"
  }
}
