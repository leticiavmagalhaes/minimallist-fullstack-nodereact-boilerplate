# Node backend boilerplate 

# Contexto | Context
Gerar um projeto base de Node (boilerplate), utilizando npm, Typescript, tsx e Express.

## Estrutura | Structure
```
backend/
    src/
    routes/
        index.routes.ts
    app.ts
    server.ts
    package.json
    tsconfig.json
    .gitignore
```

## Tech Stack | Tecnologias
* **node.js** - runtime
* **npm** - gerenciador de pacotes
* **typescript** - linguagem de programação

## Bibliotecas | Packages
* **tsx** - TypeScript Execute (tsx): The easiest way to run TypeScript in Node.js
* **express**  Fast, unopinionated, minimalist web framework for Node.js

## Scripts base | Scripts Default 
> Criar no `package.json`

* `start` - iniciar o servidor com tsx.
* `dev` - inicia em modo de desenvolvimento com o modo watch.
* `test` - executa testes com o suporte typescript.
* `clean` - remover arquivos temporários ou artefatos simples do projeto.


## Comandos | Comands

```
npm install
npm run dev
npm start
npm test
npm run clean
```

## Rotas base | Endpoints Sample
* `/api` - retornar o status da api, nome do projeto e timestamp
* `/api/hello` - retorna um hello world simples em um json

## Code Guideline
* constantes sempre em caixa alta, e no padrão SCREAMING_SNAKE_CASE
* nome de arquivos utilizar padrão `kebab-case`
* estrutura mínima e organizada
* separar app, server e routes
* evite complexidade desnecessária
* preferir configuração simples de typescript

## Guardrails
* sempre use apenas o **npm**
* sempre crie novos arquivos pensando em **typescript**
* sempre utilzar o **tsx** para executar arquivos `.ts`
* sempre gravar arquivos com Set-Content UTF8
* sempre que possível, responda os endpoints no formato `JSON`
* nunca deixe senhas, configurações e dados sensíveis em hard core, deixe em um arquivo .env
* usar a porta 3333 no arquivo `.env` entrypoint no meu servidor
