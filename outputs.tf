output "infra_internal_subnet" {
  value = "${aws_subnet.infra_internal}"
}

output "infra_external_subnet" {
  value = "${aws_subnet.infra_external}"
}

output "vpc_infra_id" {
  value = data.terraform_remote_state.terraform-cloud-tier1.outputs.vpc_infra.id
}
