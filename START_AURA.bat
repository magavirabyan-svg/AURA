@echo off
setlocal
cd /d "%~dp0"

echo.
echo ============================================
echo           AURA - THE WORLD INSIDE YOU
echo ============================================
echo.

where node >nul 2>nul
if errorlevel 1 (
  echo Node.js is not installed on this computer.
  echo Please install the current Node.js LTS, then run START_AURA.bat again.
  start "" "https://nodejs.org/"
  pause
  exit /b 1
)

if not exist node_modules (
  echo Installing AURA dependencies. This may take a little while...
  call npm install --no-audit --no-fund
  if errorlevel 1 (
    echo.
    echo Dependency installation failed. Check your internet connection and run this file again.
    pause
    exit /b 1
  )
)

if not exist .env if exist .env.example copy /Y .env.example .env >nul

start "AURA Browser" "http://localhost:5173"
call npm run dev
