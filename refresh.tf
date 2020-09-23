# Keeps track if outputs.tf file changes
resource "random_uuid" "tfc_output_refresh" {
  keepers = {
    refresh : filesha256("${path.module}/outputs.tf")
  }
}
