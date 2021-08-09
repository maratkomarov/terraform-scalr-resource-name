module "resource-name" {
  source  = "penja.scalr.io/env-t4a5m9gqfptdmtg/resource-name/scalr"
  version = "4.0.10"
}
  
resource "null_resource" "cluster" {
  triggers = {
    timestamp = timestamp()
  }
}

output "test" {
  value = "test"
}
