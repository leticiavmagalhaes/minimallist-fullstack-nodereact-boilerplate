# 🚀 Boilerplate Template

Este repositório é um **template base (boilerplate)** para iniciar projetos de forma rápida, padronizada e profissional.

---

## 🧠 Conceito

Este template segue uma abordagem estruturada baseada em:

```
SeedSpec → Recipe → Boilerplate
```

### 🔹 SeedSpec (Especificação)

Define **o que deve ser criado**.

Exemplo:

* Stack (React, Node, etc.)
* Arquitetura
* Ferramentas (TypeScript, ESLint, etc.)

> É a intenção do projeto.

---

### ⚙️ Recipe (Execução)

Responsável por **gerar automaticamente o projeto** a partir da SeedSpec.

Pode ser:

* Scripts (`.ps1`, `.sh`)
* CLIs
* Ferramentas de automação

Funções:

* Criar estrutura de pastas
* Gerar arquivos
* Instalar dependências

> É o processo de criação.

---

### 📦 Boilerplate (Resultado)

É o **projeto final gerado**, pronto para uso.

Inclui:

* Código base funcional
* Configurações prontas
* Estrutura organizada

> É o produto final.

---

## 🔄 Fluxo

```
SeedSpec (definição)
   ↓
Recipe (automação)
   ↓
Boilerplate (código pronto)
```

---

## 🎯 Objetivo

* Acelerar o início de novos projetos
* Garantir padronização
* Reduzir erros manuais
* Melhorar a produtividade

---

## 🛠️ Como usar

### 1. Clone o repositório

```bash
git clone https://github.com/leticiavmagalhaes/minimallist-fullstack-nodereact-boilerplate.git
cd minimallist-fullstack-nodereact-boilerplate
```

### 2. Execute o generator (Recipe)

Exemplo:

```PowerShell
.specs/recipes/00_recipe_backend.ps1
```

ou

```Bash 
.specs/recipes/00_recipe_backend.sh
```


### 3. Inicie o projeto

```bash
npm install
npm run dev
```

---

## 📌 Stack 

* Node.js
* TypeScript
* React
  
---

## 📄 Licença

MIT
