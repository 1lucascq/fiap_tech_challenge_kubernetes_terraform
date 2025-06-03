# FIAP Tech Challenge - Kubernetes Infrastructure

Este repositório contém a infraestrutura Kubernetes (EKS) e os manifestos para deployment da aplicação NestJS.

## Estrutura

- `terraform/`: Infraestrutura AWS EKS
- `kubernetes/`: Manifestos Kubernetes adaptados do projeto original

## Como usar

1. Configure os secrets no GitHub:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`
   - `DATABASE_URL`
   - `DOCKER_REGISTRY`

2. O Terraform criará o cluster automaticamente via CI/CD

3. Use o workflow manual para fazer deploy da aplicação

## Dependências

- Banco de dados deve estar criado (repositório separado)
- Imagem Docker deve estar no registry configurado