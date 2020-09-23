output "infra_internal_subnet_id" {
  value = "${aws_subnet.infra_internal.id}"
}

output "infra_external_subnet_id" {
  value = "${aws_subnet.infra_external.id}"
}

output "vpc_infra_id" {
  value = data.terraform_remote_state.terraform-cloud-tier1.outputs.vpc_infra.id
}
