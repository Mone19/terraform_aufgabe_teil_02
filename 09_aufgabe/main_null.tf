resource "null_resource" "run_script" {
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    command = "bash mein_script.sh"
  }
}