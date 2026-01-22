# Chia Blockchain Resources

A curated master repository aggregating essential Chia blockchain resources using git submodules. Designed for developers building products on the Chia blockchain with a focus on best practices and code quality.

[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit)](https://github.com/pre-commit/pre-commit)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)
[![Prettier](https://img.shields.io/badge/code_style-prettier-ff69b4.svg)](https://prettier.io/)

## Quick Start

```bash
# Clone with all submodules
git clone --recurse-submodules https://github.com/acceptc00kies/chia-blockchain-resources.git
cd chia-blockchain-resources

# Set up development environment
pip install -e ".[dev]"
pre-commit install

# If already cloned, initialize submodules
git submodule update --init --recursive
```

## Repository Structure

```
chia-blockchain-resources/
├── core/                    # Core blockchain implementation
├── smart-contracts/         # Chialisp, CLVM, Rue, and puzzles
├── gaming/                  # Official gaming framework
│   └── mrdennisv/          # MrDennisV's game implementations
├── games/                   # Additional game examples
├── sdks/                    # SDKs and client libraries
├── tools/                   # Development tools & utilities
├── documentation/           # Official docs and CHIPs
├── climate/                 # Climate tokenization projects
├── forks/                   # Community forks (reference)
├── references/              # Code quality & best practices
│   ├── code-quality/       # Pre-commit hooks reference
│   └── best-practices/     # Clean code guides
├── misc/                    # Miscellaneous resources
├── .pre-commit-config.yaml # Automated code quality checks
├── pyproject.toml          # Python tooling configuration
├── CONTRIBUTING.md         # Contribution guidelines
└── RESOURCES.md            # Detailed repository catalog
```

---

## Code Quality & Automation

This repository enforces code quality through automated pre-commit hooks.

### Automated Checks

| Category | Tools | Languages |
|----------|-------|-----------|
| **Formatting** | Black, Prettier | Python, JS/TS, JSON, YAML, MD |
| **Linting** | Flake8, ESLint, Ruff | Python, JavaScript, TypeScript |
| **Type Checking** | mypy | Python |
| **Security** | Bandit, Gitleaks | Python, All |
| **Quality** | isort, codespell | Python, All |

### Setup Code Quality Tools

```bash
# Install pre-commit
pip install pre-commit

# Install hooks (runs on every commit)
pre-commit install
pre-commit install --hook-type commit-msg

# Run manually on all files
pre-commit run --all-files
```

### Configuration Files

| File | Purpose |
|------|---------|
| `.pre-commit-config.yaml` | Pre-commit hook definitions |
| `pyproject.toml` | Python tools (black, isort, mypy, pytest) |
| `.eslintrc.json` | JavaScript/TypeScript linting |
| `.prettierrc.json` | Multi-language formatting |

---

## Categories

### Core (`core/`)
The fundamental Chia blockchain implementations.

| Repository | Description |
|------------|-------------|
| [chia-blockchain](core/chia-blockchain) | Main Python implementation - full node, farmer, harvester, wallet |
| [chia-blockchain-gui](core/chia-blockchain-gui) | Electron/React GUI application |
| [chia_rs](core/chia_rs) | Rust consensus code and utilities |
| [clvm_rs](core/clvm_rs) | Rust CLVM (Chia Lisp VM) implementation |
| [chiapos](core/chiapos) | Proof of Space library |
| [chiavdf](core/chiavdf) | Verifiable Delay Function utilities |

### Smart Contracts (`smart-contracts/`)
Everything for building Chialisp puzzles and smart contracts.

| Repository | Description |
|------------|-------------|
| [chialisp](smart-contracts/chialisp) | Rust Chialisp compiler with Chialisp-21 dialect |
| [chia_puzzles](smart-contracts/chia_puzzles) | Standard on-chain puzzles |
| [clvm](smart-contracts/clvm) | Contract Language Virtual Machine |
| [rue](smart-contracts/rue) | Typed language that compiles to CLVM |
| [cypher-chialisp](smart-contracts/community/cypher-chialisp) | Hashgreen's Chialisp library |
| [chialisp_dev_utility](smart-contracts/community/chialisp_dev_utility) | Development workflow utility |
| [Taichia-Chialisp](smart-contracts/community/Taichia-Chialisp) | Taichia service programs |

### Gaming (`gaming/` & `games/`)
Build games on Chia using state channels and smart contracts.

#### Official Framework
| Repository | Description |
|------------|-------------|
| [chia-gaming](gaming/chia-gaming) | Official gaming framework for peer-to-peer games |
| [chiania](gaming/chiania) | Chia RPG game example |
| [ChiaRPSGame](gaming/ChiaRPSGame) | Rock Paper Scissors smart contract game |

#### MrDennisV Game Implementations
| Repository | Description |
|------------|-------------|
| [ChiaRPSGame](games/mrdennisv/ChiaRPSGame) | Full RPS on Chia (Chialisp contracts, Python driver, web UI) |
| [ChiaRPS](games/mrdennisv/ChiaRPS) | JS-based RPS variant with recent updates |

### Tools (`tools/`)
Development, debugging, and utility tools.

| Repository | Description |
|------------|-------------|
| [chia-dev-tools](tools/chia-dev-tools) | Chialisp functions, object inspection, RPC client |
| [vscode-chialisp-lsp](tools/vscode-chialisp-lsp) | VS Code Chialisp extension |
| [coinset-cli](tools/coinset-cli) | CLI for accessing coin set data |
| [chialisp-playground](tools/chialisp-playground) | Interactive Chialisp editor for testing |
| [ChiaTubi](tools/ChiaTubi) | Chia utility tools (JS) |
| [ChiaOfferContest](tools/ChiaOfferContest) | Offer file management tools |

### SDKs (`sdks/`)
Libraries for wallet and dApp development.

| Repository | Description |
|------------|-------------|
| [cni-wallet-sdk](sdks/cni-wallet-sdk) | Official CNI wallet SDK |
| [chia-wallet-sdk](sdks/chia-wallet-sdk) | High-performance Rust wallet SDK |
| [chia-client](sdks/chia-client) | TypeScript RPC client |
| [chia_crypto_utils](sdks/chia_crypto_utils) | Dart cryptographic utilities |
| [sage](sdks/sage) | Lightweight Chia wallet |

### Documentation (`documentation/`)
Official documentation and improvement proposals.

| Repository | Description |
|------------|-------------|
| [chia-docs](documentation/chia-docs) | Official Chia documentation |
| [chips](documentation/chips) | Chia Improvement Proposals |
| [chialisp-web](documentation/chialisp-web) | Chialisp documentation website |

### References (`references/`)
Code quality tools and best practice guides.

#### Code Quality Tools
| Repository | Description |
|------------|-------------|
| [pre-commit-hooks](references/code-quality/pre-commit-hooks) | Standard pre-commit hooks |
| [jumanjihouse-hooks](references/code-quality/jumanjihouse-hooks) | Shell linting and git checks |

#### Best Practices
| Repository | Description |
|------------|-------------|
| [clean-code-javascript](references/best-practices/clean-code-javascript) | Clean code principles for JavaScript |
| [clean-code](references/best-practices/clean-code) | General clean code techniques |
| [best-coding-practices](references/best-practices/best-coding-practices) | Curated best practices collection |
| [awesome-code-review](references/best-practices/awesome-code-review) | Code review tools and resources |

### Climate (`climate/`)
Carbon credit tokenization on Chia.

| Repository | Description |
|------------|-------------|
| [Climate-Tokenization-Engine](climate/Climate-Tokenization-Engine) | Backend for climate tokenization |
| [Climate-Tokenization-Engine-UI](climate/Climate-Tokenization-Engine-UI) | Tokenization UI |
| [climate-explorer-ui](climate/climate-explorer-ui) | Climate explorer interface |

### Forks (`forks/`)
Community blockchain forks for reference.

| Repository | Description |
|------------|-------------|
| [cactus-blockchain](forks/cactus-blockchain) | Solar-powered Chia fork |
| [chia-rosechain](forks/chia-rosechain) | Chiarose (XCR) fork |

### Miscellaneous (`misc/`)

| Repository | Description |
|------------|-------------|
| [blockchain-stuff](misc/blockchain-stuff) | Puzzle analysis and findings |

---

## Development Workflow

### Working with Submodules

```bash
# Check submodule status
git submodule status

# Update a specific submodule
git submodule update --remote smart-contracts/chialisp

# Update all submodules
git submodule update --remote --merge

# Pull latest changes including submodule updates
git pull --recurse-submodules
```

### Making Changes

1. Create a feature branch: `git checkout -b feature/your-feature`
2. Make changes (pre-commit runs automatically)
3. Commit with conventional format: `git commit -m "feat(scope): description"`
4. Push and create PR

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidelines.

---

## Getting Started with Chia Development

### Beginner Path
1. **Documentation**: Read through `documentation/chia-docs` for fundamentals
2. **Chialisp Basics**: Explore `documentation/chialisp-web` tutorials
3. **Standard Puzzles**: Study patterns in `smart-contracts/chia_puzzles`

### Intermediate Path
1. **Rue Language**: Try `smart-contracts/rue` for typed Chialisp
2. **Dev Tools**: Set up `tools/chia-dev-tools` for debugging
3. **Playground**: Experiment in `tools/chialisp-playground`

### Gaming Development
1. **Framework**: Start with `gaming/chia-gaming` state channels
2. **Examples**: Study `games/mrdennisv/ChiaRPSGame` implementation
3. **Build**: Create your own game using the patterns

### Building Products
1. **SDKs**: Choose from `sdks/` based on your language
2. **Security**: Follow practices in `references/best-practices/`
3. **Quality**: Use pre-commit hooks for consistent code

---

## External Resources

- [Chia Network Official](https://www.chia.net/)
- [Chialisp Documentation](https://chialisp.com/)
- [Rue Language](https://rue-lang.com/)
- [Chia Developer Portal](https://developers.chia.net/)

---

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for:
- Code quality standards
- Clean code principles
- Commit message format
- Pull request process

---

## License

Each submodule maintains its own license. Please refer to individual repositories for licensing information.
