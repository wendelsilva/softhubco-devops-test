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
git checkout -b feature/nova_feature
```
2. Desenvolvimento da feature <br>
Escreva um código limpo e bem documentado utilizando commits semânticos
```
feat: Adiciona nova funcionalidade
fix: Corrige bug na funcionalidade
refactor: Refatora código da funcionalidade
```
3. Testes <br>
Antes de abrir o pull request, garanta que sua implementação está correta rodando os testes:
```
To-do
[ ] comandos para teste
```
4. Pull Request <br>
Após finalizar a feature, faça o push da sua branch
```
git push origin feature/nova_feature
```

---