
# Terraform Azure Resource Provisioning

Este repositório contém exemplos de código Terraform para provisionamento de grupos de recursos na Azure. É uma ótima oportunidade para quem deseja aprender como utilizar o **Terraform** para gerenciar infraestruturas na nuvem.

## Pré-requisitos

Antes de começar, você precisará ter os seguintes componentes instalados e configurados:

- **Terraform** (versão 1.0 ou superior)
- **Azure CLI** (para autenticação com sua conta Azure)
- Uma conta no **Azure** com permissões de criação de recursos

## Configuração

1. Clone este repositório:

   ```bash
   git clone https://github.com/gentildf/terraform-azure-01.git
   cd terraform-azure-01
   ```

2. **Configurar variáveis**: 
   Crie um arquivo chamado `terraform.tfvars` no diretório raiz do projeto e adicione suas credenciais do Azure:

   ```hcl
   primary_subscription_id = "sua_subscription_id_principal"
   secondary_subscription_id = "sua_subscription_id_secundaria"
   ```

3. **Inicializar o Terraform**:
   Para configurar o ambiente e baixar os plugins necessários:

   ```bash
   terraform init
   ```

4. **Planejar a execução**:
   Este comando gera um plano de execução mostrando quais recursos serão criados:

   ```bash
   terraform plan
   ```

5. **Aplicar a configuração**:
   Após revisar o plano, aplique-o para criar os recursos no Azure:

   ```bash
   terraform apply
   ```

6. **Limpar recursos**:
   Para destruir os recursos criados e evitar cobranças, execute:

   ```bash
   terraform destroy
   ```

## Estrutura do Projeto

- **`main.tf`**: Contém a configuração principal para provisionar os grupos de recursos.
- **`variables.tf`**: Definição das variáveis utilizadas no projeto, como IDs de assinatura.
- **`terraform.tfvars`**: Arquivo onde você define valores sensíveis, como suas credenciais Azure (adicionado ao `.gitignore`).
- **`.gitignore`**: Arquivo que garante que informações sensíveis não sejam commitadas no repositório.

## Aprendizado

Este repositório é ideal para quem quer aprender o básico sobre:

- Como configurar múltiplos **providers** no Terraform (usando Azure).
- Como usar **loops** e **count** para criar múltiplos recursos.
- Práticas de automação de infraestrutura como código (IaC) com **Terraform**.

## Contribuições

Sinta-se à vontade para sugerir correções ou melhorias, envie um email para gentiltechdf@gmail.com
