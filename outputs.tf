# ------------------------------------------------------------------------------
# Output
# ------------------------------------------------------------------------------
output "modules_json" {
  value       = jsondecode(value = data.local_file.module_versions.content)
  description = "The content of the modules.json file"
}
