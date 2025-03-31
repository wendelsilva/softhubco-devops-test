# SoftHubCO - DevOps Teste

## 📖 Introdução

Este repositório contém a documentação do passo a passo da implementação e configuração do seguinte desafio:

> Você foi contratado por uma startup para implantar uma aplicação web em um ambiente de staging (testes) e depois em produção. A aplicação é desenvolvida em Python e usa PostgreSQL como banco de dados e MongoDB para armazenar logs. Você precisa configurar um ambiente automatizado e escalável para implantar a aplicação em contêineres Docker usando Kubernetes. Além disso, é necessário implementar um pipeline de CI/CD usando Jenkins para garantir a entrega contínua da aplicação. O ambiente de staging deve ser executado localmente usando o LocalStack para simular os serviços da AWS, enquanto o ambiente de produção será implantado na AWS.

---

## 🔄 Contribuição e Desenvolvimento de Novas Features

### 🔹 Fluxo de Desenvolvimento
1. Criação da branch <br>
Sempre crie uma nova branch a partir da `develop` antes de começar a desenvolver <br>
```
git checkout develop
git pull origin develop
git checkout -b feature/new_feature
```
2. Desenvolvimento da feature <br>
Escreva um código limpo e bem documentado utilizando commits semânticos
```
feat: new feature added
fix: bug fix for the feature
refactor: refactoring in the feature code
```
3. Pull Request <br>
Após finalizar a feature, faça o push da sua branch
```
git push origin feature/new_feature
```
---

## Requisitos

### Dependências Locais

Antes de iniciar, certifique-se de que as seguintes dependências estão instaladas:

1. **Docker**: Para contêinerizar a aplicação e rodar os containers localmente.
2. **Terraform**: Para provisionamento de infraestrutura (LocalStack, AWS).
3. **awscli-local**: Ferramenta de linha de comando que permite interagir com o LocalStack de forma similar ao AWS CLI
4. **terraform-local**: Um provedor do Terraform que facilita a execução de recursos locais em um ambiente de desenvolvimento, especificamente no contexto de simulação de serviços da AWS usando o LocalStack.
5. **kubectl**: Para gerenciar o Kubernetes.
6. **Docker Compose**: Para facilitar a execução dos múltiplos containers necessários para o projeto.

## Comandos

### 1. Preparando o Ambiente Local com Docker Compose

Com o Docker Compose configurado, basta rodar o comando a seguir para iniciar todos os serviços do projeto (aplicação, banco de dados, LocalStack, monitoramento, etc.).

```bash
docker-compose up -d
```

### 2. Comandos para Iniciar o Ambiente

Utilizando Terraform e LocalStack, o processo de criação de recursos simula a AWS localmente. Primeiro, execute os seguintes comandos para inicializar o ambiente.

```bash
tflocal init
```
Esse comando irá baixar os plugins necessários para o Terraform e preparar o ambiente de configuração.

```bash
tflocal apply
```
Esse comando cria o Bucket S3 e a Tabela DynamoDB no LocalStack e o Cluster Kubernetes.

### Observações Importantes

1. **Jenkins e Configuração do Node**:
    Antes de começar a usar o **Jenkins** para rodar pipelines com Docker, é necessário configurar um **node** de execução, onde o Jenkins possa rodar as tarefas. Se você estiver utilizando um agente inbound (um nó de execução remoto), deve configurar as permissões do Docker nesse nó.<br>
    [Como Configurar o Jenkins com Docker](https://youtu.be/mvtVL5eivzo?si=uND2Hldzk9r1rDFE),
    [Como Configurar inbound-agent no Jenkins](https://hub.docker.com/r/jenkins/inbound-agent/)

2. **Monitoramento com Prometheus, Grafana e Loki**:
    Ao configurar o Prometheus, Grafana e Loki para monitoramento, certifique-se de que as configurações de endpoint de coleta de métricas e logs estão corretas.<br>
    [Monitorando Logs com Loki e Grafana](https://www.youtube.com/watch?v=mOu0ZTQDWNA)
    [Como monitorar aplicações com Prometheus e Grafana](https://www.youtube.com/live/mwIQJ1m9ulY?si=ztuqdqKCHTDki3c7)

### Conclusão

Este projeto foi uma ótima oportunidade de aprender e aplicar diversas tecnologias importantes no ecossistema DevOps. Durante a implementação, consegui configurar e integrar ferramentas como **Jenkins**, **Terraform**, **Kubernetes**, **Docker**, **Prometheus**, **Grafana**, **Loki**, e **LocalStack** em um ambiente local, além de simular a AWS para testes e implementar um pipeline CI/CD. 

Embora algumas funcionalidades ainda precisem ser aprimoradas, como o **Jenkins Agent** e o monitoramento completo com **Prometheus**, foi possível estabelecer uma base sólida para o projeto. As dificuldades encontradas durante o processo também ajudaram a identificar áreas que exigem mais prática e aprendizado contínuo.

Você pode acessar a documentação completa e os detalhes adicionais sobre o desenvolvimento do projeto na seguinte seção do Notion:

[Documentação Completa - Detalhes e Próximos Passos](https://www.notion.so/Desafio-1c36ffd1050380d79ccaf3dce40ce259?pvs=4)