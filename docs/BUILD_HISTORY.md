# Build History: Chia Blockchain Resources

Step-by-step documentation of how this repository was built, with reasoning for every decision.

---

## Project Overview

**Purpose:** Curated master repository aggregating essential Chia blockchain resources for developers
**Started:** January 2026
**Status:** Active and maintained

---

## Phase 1: Repository Design

### Step 1.1: Aggregation Strategy
**What:** Use git submodules to aggregate external repositories
**Why:**
- Reference canonical sources without forking
- Automatic updates from upstream
- Keeps this repo lightweight
- Maintains proper attribution
**Alternatives considered:**
- Forking everything (maintenance burden)
- Manual copies (gets out of date)
- Links-only documentation (less useful)
**Tradeoffs:** Submodules add complexity but worth it for staying current

### Step 1.2: Category Organization
**What:** Organized repos into logical categories (core, smart-contracts, gaming, etc.)
**Why:**
- Clear navigation for developers
- Supports different learning paths
- Groups related resources
**Categories:**
- core/ - Blockchain implementations
- smart-contracts/ - Chialisp and CLVM
- gaming/ - Game development
- sdks/ - Client libraries
- tools/ - Development utilities
- documentation/ - Official docs
- climate/ - Carbon tokenization
- references/ - Best practices

---

## Phase 2: Code Quality Infrastructure

### Step 2.1: Pre-commit Hooks
**What:** Comprehensive pre-commit configuration
**Why:**
- Enforce consistent code quality
- Catch issues before commit
- Educational tool for contributors
**Tools included:**
- Black (Python formatting)
- Prettier (JS/TS/JSON/YAML/MD)
- Flake8, Ruff (Python linting)
- ESLint (JavaScript linting)
- mypy (Python type checking)
- Bandit (Python security)
- Gitleaks (secrets detection)
- codespell (spelling)

### Step 2.2: CONTRIBUTING.md
**What:** Comprehensive contribution guidelines
**Why:**
- Document coding standards
- Explain clean code principles
- Guide PR process
**Pattern:** Adapted from industry best practices, specifically clean code principles

---

## Phase 3: Documentation

### Step 3.1: README Structure
**What:** Detailed README with tables for each category
**Why:**
- Quick reference for developers
- Shows repo purpose at a glance
- Learning path guidance
**Sections:**
- Quick Start
- Repository Structure
- Code Quality & Automation
- Categories (with tables)
- Getting Started paths
- External Resources

### Step 3.2: RESOURCES.md
**What:** Detailed catalog of all resources
**Why:** More detail than README can provide
**Format:** Comprehensive descriptions, use cases, links

---

## Architecture Decisions

### Submodule Philosophy
- Include official Chia Network repos
- Include high-quality community repos
- Include reference/best-practice repos
- Exclude unmaintained or low-quality repos

### Update Strategy
- Periodic `git submodule update --remote`
- Review changes before committing
- Keep lock to stable versions

---

## Key Decisions Summary

| Decision | Choice | Reasoning |
|----------|--------|-----------|
| Aggregation | Git submodules | Stay current with upstream |
| Quality | Pre-commit hooks | Enforce standards |
| Organization | Category folders | Clear navigation |
| Documentation | README + RESOURCES + CONTRIBUTING | Complete guidance |

---

## Submodule Categories

| Category | Count | Description |
|----------|-------|-------------|
| core | 6 | Blockchain implementations |
| smart-contracts | 7 | Chialisp and CLVM |
| gaming | 3 | Official gaming framework |
| games | 2 | MrDennisV implementations |
| sdks | 5 | Client libraries |
| tools | 6 | Development utilities |
| documentation | 3 | Official docs |
| references | 6 | Best practices |
| climate | 3 | Carbon tokenization |
| forks | 2 | Community forks |
| misc | 1 | Other resources |

---

## Future Considerations

- Add more community tools as they emerge
- Update pre-commit config as tools evolve
- Add CI/CD for automated testing
- Consider automated submodule update PRs

---

## Standards

This project follows [acceptc00kies/master-guidance](https://github.com/acceptc00kies/master-guidance)
