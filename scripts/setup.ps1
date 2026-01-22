# Setup script for Chia Blockchain Resources (Windows PowerShell)
# Run: .\scripts\setup.ps1

$ErrorActionPreference = "Stop"

Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "Chia Blockchain Resources - Setup" -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan

function Write-Status($message) {
    Write-Host "[OK] " -ForegroundColor Green -NoNewline
    Write-Host $message
}

function Write-Warning($message) {
    Write-Host "[WARN] " -ForegroundColor Yellow -NoNewline
    Write-Host $message
}

function Write-Error($message) {
    Write-Host "[ERROR] " -ForegroundColor Red -NoNewline
    Write-Host $message
}

# Check Python
Write-Host "`nChecking Python..." -ForegroundColor White
try {
    $pythonVersion = python --version 2>&1
    Write-Status "Python found: $pythonVersion"
} catch {
    Write-Error "Python not found. Please install Python 3.9+"
    exit 1
}

# Check Node (optional)
Write-Host "`nChecking Node.js..." -ForegroundColor White
try {
    $nodeVersion = node --version 2>&1
    Write-Status "Node.js found: $nodeVersion"
} catch {
    Write-Warning "Node.js not found. JS/TS linting will be skipped."
}

# Initialize submodules
Write-Host "`nInitializing git submodules..." -ForegroundColor White
git submodule update --init --recursive
Write-Status "Submodules initialized"

# Create virtual environment
Write-Host "`nSetting up Python virtual environment..." -ForegroundColor White
if (-not (Test-Path ".venv")) {
    python -m venv .venv
    Write-Status "Virtual environment created"
} else {
    Write-Status "Virtual environment already exists"
}

# Activate virtual environment
Write-Host "`nActivating virtual environment..." -ForegroundColor White
& .\.venv\Scripts\Activate.ps1

# Install Python dependencies
Write-Host "`nInstalling Python dependencies..." -ForegroundColor White
pip install --upgrade pip | Out-Null
pip install -e ".[dev]" | Out-Null
Write-Status "Python dependencies installed"

# Install pre-commit hooks
Write-Host "`nInstalling pre-commit hooks..." -ForegroundColor White
pre-commit install
pre-commit install --hook-type commit-msg
Write-Status "Pre-commit hooks installed"

# Install Node dependencies (optional)
Write-Host "`nChecking for Node dependencies..." -ForegroundColor White
if (Test-Path "package.json") {
    try {
        npm install 2>&1 | Out-Null
        Write-Status "Node dependencies installed"
    } catch {
        Write-Warning "npm install failed, continuing..."
    }
} else {
    Write-Warning "No package.json found, skipping npm install"
}

# Run initial pre-commit check
Write-Host "`nRunning initial code quality check..." -ForegroundColor White
pre-commit run --all-files

Write-Host "`n==========================================" -ForegroundColor Cyan
Write-Host "Setup complete!" -ForegroundColor Green
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next steps:" -ForegroundColor White
Write-Host "  1. Venv is already activated"
Write-Host "  2. Make changes to your code"
Write-Host "  3. Pre-commit hooks will run automatically on commit"
Write-Host ""
Write-Host "Useful commands:" -ForegroundColor White
Write-Host "  pre-commit run --all-files  # Run all checks manually"
Write-Host "  git submodule update --remote --merge  # Update submodules"
Write-Host ""
