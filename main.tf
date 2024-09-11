# ------------------------------------------------------------------------------
# Resources
# ------------------------------------------------------------------------------

resource "terraform_data" "test" {
  provisioner "local-exec" {
    command = "jq ' .Modules[] | { module: .Key, version: .Version  }'  .terraform/modules/modules.json "
  }
}

data "local_file" "modules_json" {
  filename = "${path.cwd}/.terraform/modules/modules.json"
}
