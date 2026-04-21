# React frontend boilerplate

# Contexto | Context
Gerar um projeto base de frontend (boilerplate), utilizando npm, React, Vite, Typescript e CSS puro.

## Estrutura | Structure
```
frontend/
    src/
        components/
        pages/
        services/
        styles/
        App.tsx
        main.tsx
    public/
    index.html
    package.json
    tsconfig.json
    vite.config.ts
    .gitignore
```

## Tech Stack | Tecnologias
* **react** - biblioteca para construção de interfaces
* **vite** - bundler e dev server rápido
* **typescript** - linguagem de programação
* **css** - estilização padrão
* **Bibliotecas** | Packages
* **vite** - ferramenta de build moderna e rápida
* **react** - criação de UI baseada em componentes
* **react-dom** - renderização para o DOM

## Scripts base | Scripts Default
> Criar no package.json

* `dev` - iniciar o projeto em modo desenvolvimento com Vite
* `build` - gerar build de produção
* `preview` - visualizar build localmente
* `test` - executar testes com suporte a typescript
* `clear` - remover arquivos temporários ou artefatos simples do projeto

## Comandos | Commands
```
npm install
npm run dev
npm run build
npm run preview
npm test
npm run clean
```

## Rotas base | Pages Sample
* `/ - página inicial com nome do projeto e timestamp`
* `/hello - página simples com mensagem "Hello World"`

## Code Guideline
* componentes em PascalCase
* constantes sempre em caixa alta no padrão SCREAMING_SNAKE_CASE
* nome de arquivos utilizar padrão kebab-case
* estrutura mínima e organizada
* separar components, pages, services e styles
* evitar complexidade desnecessária
* preferir configuração simples de typescript
* reutilização de componentes sempre que possível

## Guardrails
* sempre usar apenas o npm
* sempre criar arquivos em typescript (.tsx / .ts)
* evitar bibliotecas desnecessárias
* usar CSS puro (sem frameworks)
* nunca deixar dados sensíveis no código (usar .env com prefixo VITE_)
* manter o projeto leve e performático
* usar Vite como padrão para build e desenvolvimento
