# Chia Blockchain Resources

A curated master repository aggregating essential Chia blockchain resources using git submodules. Designed for developers building products on the Chia blockchain with a focus on best practices.

## Quick Start

```bash
# Clone with all submodules
git clone --recurse-submodules https://github.com/YOUR_USERNAME/chia-blockchain-resources.git

# If already cloned, initialize submodules
git submodule update --init --recursive

# Update all submodules to latest
git submodule update --remote --merge
```

## Repository Structure

```
chia-blockchain-resources/
├── core/                 # Core blockchain implementation
├── smart-contracts/      # Chialisp, CLVM, Rue, and puzzles
├── gaming/               # Gaming framework and examples
├── sdks/                 # SDKs and client libraries
├── tools/                # Development tools
├── documentation/        # Official docs and CHIPs
├── climate/              # Climate tokenization projects
├── forks/                # Community forks (reference)
└── misc/                 # Miscellaneous resources
```

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

### Gaming (`gaming/`)
Build games on Chia using state channels.

| Repository | Description |
|------------|-------------|
| [chia-gaming](gaming/chia-gaming) | Official gaming framework for peer-to-peer games |
| [chiania](gaming/chiania) | Chia RPG game example |
| [ChiaRPSGame](gaming/ChiaRPSGame) | Rock Paper Scissors smart contract game |

### SDKs (`sdks/`)
Libraries for wallet and dApp development.

| Repository | Description |
|------------|-------------|
| [cni-wallet-sdk](sdks/cni-wallet-sdk) | Official CNI wallet SDK |
| [chia-wallet-sdk](sdks/chia-wallet-sdk) | High-performance Rust wallet SDK |
| [chia-client](sdks/chia-client) | TypeScript RPC client |
| [chia_crypto_utils](sdks/chia_crypto_utils) | Dart cryptographic utilities |
| [sage](sdks/sage) | Lightweight Chia wallet |

### Tools (`tools/`)
Development and debugging utilities.

| Repository | Description |
|------------|-------------|
| [chia-dev-tools](tools/chia-dev-tools) | Chialisp functions, object inspection, RPC client |
| [vscode-chialisp-lsp](tools/vscode-chialisp-lsp) | VS Code Chialisp extension |
| [coinset-cli](tools/coinset-cli) | CLI for accessing coin set data |

### Documentation (`documentation/`)
Official documentation and improvement proposals.

| Repository | Description |
|------------|-------------|
| [chia-docs](documentation/chia-docs) | Official Chia documentation |
| [chips](documentation/chips) | Chia Improvement Proposals |
| [chialisp-web](documentation/chialisp-web) | Chialisp documentation website |

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

## Working with Submodules

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

## Getting Started with Chia Development

1. **Start with Documentation**: Read through `documentation/chia-docs` for fundamentals
2. **Learn Chialisp**: Explore `smart-contracts/chialisp` and `documentation/chialisp-web`
3. **Study Puzzles**: Examine standard puzzles in `smart-contracts/chia_puzzles`
4. **Build Games**: Use `gaming/chia-gaming` framework for game development
5. **Integrate Wallets**: Use SDKs in `sdks/` for wallet functionality

## External Resources

- [Chia Network Official](https://www.chia.net/)
- [Chialisp Documentation](https://chialisp.com/)
- [Rue Language](https://rue-lang.com/)
- [Chia Developer Portal](https://developers.chia.net/)

## License

Each submodule maintains its own license. Please refer to individual repositories for licensing information.
