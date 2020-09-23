resource "aws_subnet" "subnet1" {
  vpc_id = data.terraform_remote_state.terraform-cloud-tier1.outputs.vpc_infra.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet1"
  }
}
