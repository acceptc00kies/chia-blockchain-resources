# Chia Blockchain Resources Catalog

Detailed descriptions of all repositories included in this collection.

---

## Core Blockchain Implementation

### chia-blockchain
**GitHub:** https://github.com/Chia-Network/chia-blockchain
**Stars:** 10,866+
**Language:** Python

The main Chia blockchain implementation including:
- Full node synchronization and validation
- Farmer for participating in consensus
- Harvester for managing plot files
- Timelord for VDF computation
- Wallet for managing coins and transactions
- Coin set model implementation (UTXO-like)

Key concepts: Proof of Space and Time, coin set model, spend bundles.

### chia-blockchain-gui
**GitHub:** https://github.com/Chia-Network/chia-blockchain-gui
**Stars:** 339+
**Language:** TypeScript (Electron/React)

The official desktop GUI application for Chia, featuring:
- Wallet management interface
- Farming dashboard
- Pool management
- NFT gallery
- Token (CAT) support

### chia_rs
**GitHub:** https://github.com/Chia-Network/chia_rs
**Stars:** 26+
**Language:** Rust

High-performance Rust crate containing:
- Consensus validation code
- BLS signature operations
- Coin set model utilities
- Python wheel bindings

### clvm_rs
**GitHub:** https://github.com/Chia-Network/clvm_rs
**Stars:** 70+
**Language:** Rust

Rust implementation of the Chia Lisp Virtual Machine:
- Fast CLVM execution engine
- Serialization/deserialization
- Cost calculation
- Python bindings

### chiapos
**GitHub:** https://github.com/Chia-Network/chiapos
**Stars:** 271+
**Language:** C++

Proof of Space library:
- Plot file creation
- Proof generation and verification
- Hellman attack prevention tables

### chiavdf
**GitHub:** https://github.com/Chia-Network/chiavdf
**Stars:** 64+
**Language:** C++

Verifiable Delay Function implementation:
- Class group computations
- VDF proof generation
- Timelord integration

---

## Smart Contracts & Chialisp

### chialisp
**GitHub:** https://github.com/Chia-Network/chialisp
**Stars:** 15+
**Language:** Rust

The modern Chialisp compiler featuring:
- Chialisp-21 dialect support
- Improved error messages
- Module system
- Optimization passes

### chia_puzzles
**GitHub:** https://github.com/Chia-Network/chia_puzzles
**Language:** Chialisp

Standard puzzles deployed on mainnet:
- Standard transaction puzzle
- CAT (Chia Asset Token) puzzles
- NFT puzzles
- DID (Decentralized Identity) puzzles
- Singleton patterns
- Pool puzzles

Essential reference for smart contract development.

### clvm
**GitHub:** https://github.com/Chia-Network/clvm
**Language:** Python

Reference CLVM implementation:
- Original Python interpreter
- Operator definitions
- Cost model documentation

### rue
**GitHub:** https://github.com/xch-dev/rue
**Language:** Rust

A typed programming language for Chia:
- Strong type system
- Compiles to CLVM
- Better developer experience than raw Chialisp
- Playground at https://rue-lang.com/

### Community Chialisp Libraries

#### cypher-chialisp
**GitHub:** https://github.com/hashgreen/cypher-chialisp
Hashgreen's Chialisp library with reusable puzzle patterns.

#### chialisp_dev_utility
**GitHub:** https://github.com/Quexington/chialisp_dev_utility
Workflow utility for Chialisp smart contract development.

#### Taichia-Chialisp
**GitHub:** https://github.com/TaichiaDao/Taichia-Chialisp
Chialisp programs for Taichia decentralized services.

---

## Gaming on Chia

### chia-gaming
**GitHub:** https://github.com/Chia-Network/chia-gaming
**Stars:** 53+
**Language:** Rust/Python

Official framework for building games on Chia:
- State channel implementation
- Peer-to-peer game protocols
- Trustless game resolution
- Example game implementations

Enables real-time games with on-chain settlement.

### chiania
**GitHub:** https://github.com/RudolfAchter/chiania
RPG game built on Chia from "Chia Inventory" project.

### ChiaRPSGame
**GitHub:** https://github.com/jjldv/ChiaRPSGame
Rock, Paper, Scissors implementation using Chia smart contracts. Good example of simple game logic on-chain.

---

## SDKs & Client Libraries

### cni-wallet-sdk
**GitHub:** https://github.com/Chia-Network/cni-wallet-sdk
**Language:** TypeScript

Official CNI wallet SDK for:
- Coin management
- Transaction building
- dApp integration
- Offer file handling

### chia-wallet-sdk
**GitHub:** https://github.com/xch-dev/chia-wallet-sdk
**Language:** Rust

High-performance Rust SDK featuring:
- Wallet primitives
- Transaction construction
- Puzzle drivers
- Python bindings via PyO3

### chia-client
**GitHub:** https://github.com/freddiecoleman/chia-client
**Stars:** 87+
**Language:** TypeScript

TypeScript client for Chia RPC interfaces:
- Full node RPC
- Wallet RPC
- Farmer RPC
- Harvester RPC

### chia_crypto_utils
**GitHub:** https://github.com/irulast/chia_crypto_utils
**Stars:** 65+
**Language:** Dart

Cryptographic utilities for Dart/Flutter:
- BLS signatures
- Puzzle hash generation
- Key derivation
- Mobile wallet development

### sage
**GitHub:** https://github.com/xch-dev/sage
**Stars:** 51+
**Language:** Rust

Lightweight Chia wallet:
- Minimal dependencies
- Fast synchronization
- Command-line interface

---

## Development Tools

### chia-dev-tools
**GitHub:** https://github.com/Chia-Network/chia-dev-tools
**Language:** Python

Comprehensive development utilities:
- Chialisp compilation helpers
- Coin inspection tools
- RPC client wrapper
- Testing frameworks
- Puzzle debugging

### vscode-chialisp-lsp
**GitHub:** https://github.com/Chia-Network/vscode-chialisp-lsp
**Stars:** 9+
**Language:** TypeScript

VS Code extension providing:
- Syntax highlighting
- Code completion
- Error diagnostics
- Go to definition
- Hover documentation

### coinset-cli
**GitHub:** https://github.com/coinset-org/cli
**Language:** TypeScript

CLI tool for exploring coin sets:
- Query coin records
- Track coin history
- Analyze spend patterns

---

## Documentation

### chia-docs
**GitHub:** https://github.com/Chia-Network/chia-docs

Official documentation covering:
- Blockchain fundamentals
- Coin set model explained
- Consensus mechanism
- Chialisp tutorials
- RPC reference
- Best practices

### chips
**GitHub:** https://github.com/Chia-Network/chips

Chia Improvement Proposals:
- Protocol upgrades
- New features
- Standard specifications
- Community governance

### chialisp-web
**GitHub:** https://github.com/Chia-Network/chialisp-web
**Technology:** Docusaurus

Chialisp documentation website source:
- Language tutorials
- Puzzle patterns
- Best practices
- Interactive examples

---

## Climate & Sustainability

### Climate-Tokenization-Engine
**GitHub:** https://github.com/Chia-Network/Climate-Tokenization-Engine
**Stars:** 3+
**Language:** TypeScript

Backend service for tokenizing carbon credits:
- Registry integration
- Token minting
- Audit trails

### Climate-Tokenization-Engine-UI
**GitHub:** https://github.com/Chia-Network/Climate-Tokenization-Engine-UI
**Stars:** 4+
**Language:** TypeScript/React

Web UI for climate tokenization:
- Carbon unit management
- Tokenization workflow
- Dashboard

### climate-explorer-ui
**GitHub:** https://github.com/Chia-Network/climate-explorer-ui
**Stars:** 2+
**Language:** TypeScript/React

Public explorer for climate tokens on Chia.

---

## Community Forks

### cactus-blockchain
**GitHub:** https://github.com/Cactus-Network/cactus-blockchain
**Stars:** 24+

Solar-powered fork of Chia blockchain. Reference for understanding blockchain forking patterns.

### chia-rosechain
**GitHub:** https://github.com/snight1983/chia-rosechain
**Stars:** 325+

Chiarose (XCR) fork. Alternative implementation study.

---

## Miscellaneous

### blockchain-stuff
**GitHub:** https://github.com/RudolfAchter/blockchain-stuff

Collection including:
- Chia Friends puzzle analysis
- NFT research
- Various blockchain experiments

---

## Learning Path Recommendations

### Beginner
1. Start with `documentation/chia-docs` fundamentals
2. Understand the coin set model
3. Learn basic Chialisp in `documentation/chialisp-web`

### Intermediate
1. Study `smart-contracts/chia_puzzles` patterns
2. Try the Rue language (`smart-contracts/rue`)
3. Use `tools/chia-dev-tools` for development

### Advanced
1. Dive into `core/chia-blockchain` internals
2. Explore `gaming/chia-gaming` state channels
3. Build with `sdks/chia-wallet-sdk`

### Game Developer
1. Master `gaming/chia-gaming` framework
2. Study example games (ChiaRPSGame, chiania)
3. Learn state channel patterns
