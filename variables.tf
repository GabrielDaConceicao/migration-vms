variable "source_project" {
  description = "buildrun-346317"
  type        = string
}

variable "destination_project" {
  description = "engineering-331821"
  type        = string
}

variable "region" {
  description = "Região das VMs"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Zona das VMs"
  type        = string
  default     = "us-central1-a"
}

variable "vms" {
  description = "Lista de VMs e seus discos no projeto de origem (nome da VM e do disco)"
  type        = map(string)
  default = {
    "buildrun-andre" = "buildrun-andre",
    "buildrun-vinicius" = "buildrun-vinicius"
  }
}

variable "machine_type" {
  description = "Tipo de máquina no destino"
  type        = string
  default     = "c2-standard-4"
}

variable "startup_script" {
  description = "Script de inicialização da VM"
  type        = string
  default     = ""
}
