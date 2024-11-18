source_project      = "buildrun-346317"
destination_project = "engineering-331821"
region              = "us-central1"
zone                = "us-central1-a"
machine_type        = "c2-standard-4"

vms = {
  "buildrun-andre" = "buildrun-andre",
  "buildrun-vinicius" = "buildrun-vinicius"
}

startup_script = <<EOT
#!/bin/bash
echo "VM iniciada com sucesso!"
EOT
