#!/bin/bash
# Setup script for Chia Blockchain Resources
# Run: ./scripts/setup.sh

set -e

echo "=========================================="
echo "Chia Blockchain Resources - Setup"
echo "=========================================="

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

print_status() {
    echo -e "${GREEN}[OK]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check Python
echo ""
echo "Checking Python..."
if command -v python3 &> /dev/null; then
    PYTHON_VERSION=$(python3 --version 2>&1 | cut -d' ' -f2)
    print_status "Python $PYTHON_VERSION found"
else
    print_error "Python 3 not found. Please install Python 3.9+"
    exit 1
fi

# Check Node (optional)
echo ""
echo "Checking Node.js..."
if command -v node &> /dev/null; then
    NODE_VERSION=$(node --version)
    print_status "Node.js $NODE_VERSION found"
else
    print_warning "Node.js not found. JS/TS linting will be skipped."
fi

# Initialize submodules
echo ""
echo "Initializing git submodules..."
git submodule update --init --recursive
print_status "Submodules initialized"

# Create virtual environment
echo ""
echo "Setting up Python virtual environment..."
if [ ! -d ".venv" ]; then
    python3 -m venv .venv
    print_status "Virtual environment created"
else
    print_status "Virtual environment already exists"
fi

# Activate virtual environment
source .venv/bin/activate 2>/dev/null || source .venv/Scripts/activate 2>/dev/null

# Install Python dependencies
echo ""
echo "Installing Python dependencies..."
pip install --upgrade pip > /dev/null
pip install -e ".[dev]" > /dev/null
print_status "Python dependencies installed"

# Install pre-commit hooks
echo ""
echo "Installing pre-commit hooks..."
pre-commit install
pre-commit install --hook-type commit-msg
print_status "Pre-commit hooks installed"

# Install Node dependencies (optional)
if command -v npm &> /dev/null; then
    echo ""
    echo "Installing Node dependencies..."
    if [ -f "package.json" ]; then
        npm install > /dev/null 2>&1
        print_status "Node dependencies installed"
    else
        print_warning "No package.json found, skipping npm install"
    fi
fi

# Run initial pre-commit check
echo ""
echo "Running initial code quality check..."
pre-commit run --all-files || true

echo ""
echo "=========================================="
echo -e "${GREEN}Setup complete!${NC}"
echo "=========================================="
echo ""
echo "Next steps:"
echo "  1. Activate venv: source .venv/bin/activate"
echo "  2. Make changes to your code"
echo "  3. Pre-commit hooks will run automatically on commit"
echo ""
echo "Useful commands:"
echo "  pre-commit run --all-files  # Run all checks manually"
echo "  git submodule update --remote --merge  # Update submodules"
echo ""
