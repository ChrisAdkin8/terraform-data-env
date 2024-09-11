# ------------------------------------------------------------------------------
# Resources
# ------------------------------------------------------------------------------

resource "terraform_data" "test" {
  provisioner "local-exec" {
    command = "jq ' .Modules[] | { module: .Key, version: .Version  }'  .terraform/modules/modules.json > module_versions.txt"
  }
}

data "local_file" "example_output" {
  filename = "${path.module}/module_versions.txt"
}
