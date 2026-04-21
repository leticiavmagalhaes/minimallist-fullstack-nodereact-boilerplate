# ==========================================
# Node Backend Boilerplate Creator
# ==========================================

Write-Host "Criando projeto backend..." -ForegroundColor Green

# Criar estrutura de pastas
New-Item -ItemType Directory -Path backend -Force | Out-Null
Set-Location backend

New-Item -ItemType Directory -Path src -Force | Out-Null
New-Item -ItemType Directory -Path src/routes -Force | Out-Null

# Inicializar npm
npm init -y

# Instalar dependências
npm install express cors dotenv
npm install -D typescript tsx @types/node @types/express @types/cors

# Criar tsconfig.json simples
@"
{
  "compilerOptions": {
    "target": "ES2020",
    "module": "CommonJS",
    "rootDir": "./src",
    "outDir": "./dist",
    "esModuleInterop": true,
    "strict": true
  }
}
"@ | Out-File -Encoding UTF8 tsconfig.json

# Criar .gitignore
@"
node_modules
dist
.env
"@ | Out-File -Encoding UTF8 .gitignore

# Criar .env
@"
PORT=3333
"@ | Out-File -Encoding UTF8 .env

# Criar rotas
@"
import { Router } from 'express';

const routes = Router();

routes.get('/api', (req, res) => {
    res.json({
        status: 'ok',
        name: 'Node Boilerplate',
        timestamp: new Date().toISOString()
    });
});

routes.get('/api/hello', (req, res) => {
    res.json({
        message: 'Hello World'
    });
});

export default routes;
"@ | Out-File -Encoding UTF8 src/routes/index.routes.ts

# Criar app.ts
@"
import express from 'express';
import routes from './routes/index.routes';

const app = express();

app.use(express.json());
app.use(routes);

export default app;
"@ | Out-File -Encoding UTF8 src/app.ts

# Criar server.ts
@"
import app from './app';
import dotenv from 'dotenv';

dotenv.config();

const PORT = process.env.PORT || 3333;

app.listen(PORT, () => {
    console.log(\`🚀 Server running on port \${PORT}\`);
});
"@ | Out-File -Encoding UTF8 src/server.ts

# Atualizar package.json scripts
$packageJson = Get-Content package.json | ConvertFrom-Json

$packageJson.scripts = @{
    start = "tsx src/server.ts"
    dev   = "tsx watch src/server.ts"
    test  = "echo `"No tests yet`""
    clean = "Remove-Item -Recurse -Force dist"
}

$json = $packageJson | ConvertTo-Json -Depth 10
Set-Content -Path package.json -Value $json -Encoding UTF8
Write-Host "Projeto criado com sucesso!" -ForegroundColor Cyan
Write-Host ""
Write-Host "Comandos disponíveis:"
Write-Host "npm install"
Write-Host "npm run dev"
Write-Host "npm start"
Write-Host "npm test"
Write-Host "npm run clean"
Write-Host "npm run clean"