# 🚀 Projeto DevOps com Pipeline CI e Script de Infraestrutura

## 📌 Descrição
Projeto de lista de tarefas (to-do) simples em **HTML, CSS e JavaScript**, com testes **E2E em Cypress**, visando compreender a cultura **DevOps** e como ela automatiza processos para acelerar o desenvolvimento e melhorar a qualidade do código.

---

## 🎯 Objetivos
- Implementar pipelines de **CI** com **GitHub Actions** para integração e verificação automática do código;  
- Provisionar infraestrutura como código (**IaC**) localmente com **Terraform**.  

---

## 🛠 Tecnologias Utilizadas
- **Frontend:** HTML, CSS, JavaScript  
- **Testes:** Cypress (E2E)  
- **Controle de Versões:** Git  
- **IaC:** Terraform (localmente)  

---

## 📋 Requisitos
- Conta no GitHub e **Git** instalado para o controle de versões
- **Terraform** versão 1.0  
- **Node.js 18** + **npm**  
- **Cypress**  

---

## ⚡ Pipeline CI
Executado em:
- **Push na main**  
- **Pull Request para main**

### 🔹 Job 1 – Infraestrutura
- Clona repositório, instala Terraform e aplica (`init`, `plan`, `apply`)  
- Gera arquivo `app_config.txt`  
- Salva como artefato  

### 🔹 Job 2 – Build
- Recupera `app_config.txt`  
- Instala Node.js 18 e dependências (Cypress, http-server, wait-on)  
- Compila a aplicação e salva artefatos  

### 🔹 Job 3 – Teste
- Recupera artefatos  
- Sobe servidor local em segundo plano  
- Executa testes **Cypress E2E**  

---

## 🏗 Script de Infraestrutura
Provisiona infraestrutura local gerando `app_config.txt` com **Terraform**.  

### Passo a passo:
1. Cria recurso que gera arquivo local  
2. Usa diretório atual (`path.module`)  
3. Define conteúdo no próprio script  
4. Ao aplicar, cria automaticamente `app_config.txt`  

---

## 💻 Comandos 

### Clonar o repositório
```bash
git clone https://github.com/Gabrielaprog/DevOpsnaPratica-Projeto.git
cd DevOpsnaPratica-Projeto
```



