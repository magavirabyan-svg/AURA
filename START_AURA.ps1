Set-Location $PSScriptRoot
if (-not (Get-Command node -ErrorAction SilentlyContinue)) {
  Start-Process 'https://nodejs.org/'
  Write-Host 'Node.js is required. Install Node.js LTS, then run this script again.'
  Read-Host 'Press Enter to close'
  exit 1
}
if (-not (Test-Path 'node_modules')) {
  npm install --no-audit --no-fund
  if ($LASTEXITCODE -ne 0) { Read-Host 'Dependency installation failed. Press Enter'; exit 1 }
}
if (-not (Test-Path '.env') -and (Test-Path '.env.example')) { Copy-Item '.env.example' '.env' }
Start-Process 'http://localhost:5173'
npm run dev
