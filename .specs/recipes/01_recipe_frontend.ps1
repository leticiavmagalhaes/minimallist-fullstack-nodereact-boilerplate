# ==========================================
# React + Vite + TypeScript Boilerplate
# ==========================================

$PROJECT_NAME = "frontend"

Write-Host "Criando projeto..."

npm create vite@latest $PROJECT_NAME -- --template react-ts

Set-Location $PROJECT_NAME

npm install

New-Item -ItemType Directory -Force -Path "src/components"
New-Item -ItemType Directory -Force -Path "src/pages"
New-Item -ItemType Directory -Force -Path "src/services"
New-Item -ItemType Directory -Force -Path "src/styles"

# CSS
$css = @(
"* {",
"  margin: 0;",
"  padding: 0;",
"  box-sizing: border-box;",
"}",
"",
"body {",
"  font-family: Arial, sans-serif;",
"}"
)

Set-Content -Path "src/styles/global.css" -Value $css -Encoding UTF8

# main.tsx
$main = @(
"import React from 'react'",
"import ReactDOM from 'react-dom/client'",
"import App from './App'",
"import './styles/global.css'",
"",
"ReactDOM.createRoot(document.getElementById('root')!).render(",
"  <React.StrictMode>",
"    <App />",
"  </React.StrictMode>",
")"
)

Set-Content -Path "src/main.tsx" -Value $main -Encoding UTF8

# App.tsx
$app = @(
"function App() {",
"  const TIMESTAMP = new Date().toISOString()",
"",
"  return (",
"    <div>",
"      <h1>React Boilerplate</h1>",
"      <p>Timestamp: {TIMESTAMP}</p>",
"    </div>",
"  )",
"}",
"",
"export default App"
)

Set-Content -Path "src/App.tsx" -Value $app -Encoding UTF8

# Hello
$hello = @(
"function Hello() {",
"  return <h1>Hello World</h1>",
"}",
"",
"export default Hello"
)

Set-Content -Path "src/pages/hello.tsx" -Value $hello -Encoding UTF8

# package.json
$pkg = Get-Content package.json | ConvertFrom-Json

$pkg.scripts.test = "echo `"No tests yet`""
$pkg.scripts.clean = "rimraf dist"

$pkg | ConvertTo-Json -Depth 10 | Set-Content package.json -Encoding UTF8

npm install rimraf --save-dev

Write-Host "Projeto pronto! Rode: npm run dev"