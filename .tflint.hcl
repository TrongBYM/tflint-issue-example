config {
  plugin_dir = ".tflint.d/plugins"
  call_module_type = "all"
  disabled_by_default = false
}

plugin "terraform" {
  enabled = true
  preset  = "recommended"
}

plugin "aws" {
  enabled = true
  deep_check = false 
  version = "0.35.0"
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
}