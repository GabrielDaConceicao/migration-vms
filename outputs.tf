output "image_links" {
  description = "Links das imagens criadas no projeto de origem"
  value       = [for image in google_compute_image.vm_image : image.self_link]
}

output "destination_vms" {
  description = "Instâncias criadas no projeto de destino"
  value       = [for vm in google_compute_instance.destination_vm : vm.self_link]
}

