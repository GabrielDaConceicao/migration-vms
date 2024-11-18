# Migrador de VMs do BuildRun para Engineering

Este projeto tem como objetivo automatizar o processo de migração de imagens de máquinas virtuais (VMs) de um projeto no Google Cloud (`buildrun`) para outro projeto (`engineering`) utilizando o Terraform.

## Descrição

Este repositório contém a infraestrutura necessária para migrar as VMs do projeto `buildrun` para o projeto `engineering`. Ele utiliza o Terraform para criar imagens das VMs existentes no projeto `buildrun` e, em seguida, implanta essas imagens no projeto `engineering`. 

### Funcionalidades principais:
- Criação de imagens das VMs no projeto `buildrun`.
- Migração das imagens para o projeto `engineering`.
- Criação de novas instâncias de VM no projeto `engineering` com as imagens migradas.


## Pré-requisitos

Antes de rodar o projeto, é necessário ter as seguintes ferramentas instaladas:

- **Terraform**: [Instalar Terraform](https://www.terraform.io/downloads.html)
- **Google Cloud SDK**: [Instalar Google Cloud SDK](https://cloud.google.com/sdk/docs/install)
- **Conta do Google Cloud com acesso ao projeto `buildrun` e `engineering`**.

## Configuração

1. **Autenticação com o Google Cloud:**

   Para autenticar o Terraform com o Google Cloud, você pode usar as credenciais da sua conta. Execute o comando abaixo para autenticar:

   ```bash
   gcloud auth application-default login

2. **Configurar o arquivo Terraform:**

No arquivo main.tf, configure o project e a region conforme as suas necessidades. Se necessário, ajuste as variáveis no arquivo variables.tf.

3. **Iniciar o Terraform:**

Depois de configurar as credenciais e os arquivos de Terraform, execute os seguintes comandos no diretório do repositório para aplicar a infraestrutura:


terraform init
terraform plan
terraform apply


#Vefificar projéto
 
gcloud compute instances list --project nome-do-projeto
