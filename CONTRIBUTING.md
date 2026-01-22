# Contributing to Chia Blockchain Resources

Thank you for your interest in contributing! This guide outlines our standards for code quality, best practices, and the contribution process.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Development Setup](#development-setup)
- [Code Quality Standards](#code-quality-standards)
- [Clean Code Principles](#clean-code-principles)
- [Commit Guidelines](#commit-guidelines)
- [Pull Request Process](#pull-request-process)
- [Best Practice Resources](#best-practice-resources)

---

## Code of Conduct

- Be respectful and inclusive
- Focus on constructive feedback
- Help others learn and grow

---

## Getting Started

1. Fork the repository
2. Clone with submodules: `git clone --recurse-submodules <your-fork>`
3. Set up development environment (see below)
4. Create a feature branch: `git checkout -b feature/your-feature`

---

## Development Setup

### Prerequisites

- Python 3.9+
- Node.js 18+
- Git 2.30+

### Install Development Dependencies

```bash
# Python dependencies
pip install -e ".[dev]"

# Node dependencies (if working with JS/TS)
npm install

# Install pre-commit hooks
pip install pre-commit
pre-commit install
pre-commit install --hook-type commit-msg
```

### Verify Setup

```bash
# Run pre-commit on all files
pre-commit run --all-files

# Run Python tests
pytest

# Run JS/TS linting
npm run lint
```

---

## Code Quality Standards

### Automated Checks

Every commit is automatically checked for:

| Check | Tool | Language |
|-------|------|----------|
| Formatting | Black | Python |
| Formatting | Prettier | JS/TS/JSON/YAML/MD |
| Import sorting | isort | Python |
| Linting | Flake8/Ruff | Python |
| Linting | ESLint | JS/TS |
| Type checking | mypy | Python |
| Security | Bandit | Python |
| Secrets | Gitleaks | All |
| Spelling | codespell | All |

### Python Standards

```python
# Good: Clear, typed, documented
def calculate_puzzle_hash(puzzle: Program, args: List[bytes]) -> bytes32:
    """Calculate the puzzle hash for a given puzzle and arguments."""
    full_puzzle = puzzle.run(args)
    return full_puzzle.get_tree_hash()

# Bad: Unclear, untyped
def calc(p, a):
    return p.run(a).get_tree_hash()
```

### JavaScript/TypeScript Standards

```typescript
// Good: Typed, clear naming
async function fetchCoinRecords(puzzleHash: string): Promise<CoinRecord[]> {
  const response = await client.getCoinRecordsByPuzzleHash(puzzleHash);
  return response.coinRecords;
}

// Bad: Any types, unclear naming
async function get(h: any) {
  return (await client.getCoinRecordsByPuzzleHash(h)).coinRecords;
}
```

### Chialisp Standards

```clojure
; Good: Clear structure, comments
(mod (
    INNER_PUZZLE      ; The puzzle that controls spending
    my_amount         ; Current coin amount
    new_puzzle_hash   ; Where to send funds
  )

  (include condition_codes.clib)

  ; Validate and create spend conditions
  (defun create_spend (amount puzzle_hash)
    (list
      (list CREATE_COIN puzzle_hash amount)
      (list ASSERT_MY_AMOUNT my_amount)
    )
  )

  (create_spend my_amount new_puzzle_hash)
)
```

---

## Clean Code Principles

We follow clean code principles. Reference materials are in `references/best-practices/`.

### 1. Single Responsibility Principle (SRP)

Each function/class should do one thing well.

```python
# Good: Separate concerns
class CoinValidator:
    def validate_amount(self, coin: Coin) -> bool: ...

class CoinSerializer:
    def to_json(self, coin: Coin) -> dict: ...

# Bad: Mixed concerns
class CoinManager:
    def validate_and_serialize_and_save(self, coin): ...
```

### 2. DRY (Don't Repeat Yourself)

Extract repeated logic into reusable functions.

```python
# Good: Reusable function
def create_standard_spend(puzzle_hash: bytes32, amount: uint64) -> CoinSpend:
    return CoinSpend(puzzle_hash, standard_puzzle, solution)

# Bad: Repeated code everywhere
spend1 = CoinSpend(ph1, standard_puzzle, solution1)
spend2 = CoinSpend(ph2, standard_puzzle, solution2)
```

### 3. Meaningful Names

Names should reveal intent.

```python
# Good
elapsed_time_in_days = 5
user_wallet_address = "xch1..."
is_coin_spent = True

# Bad
d = 5
s = "xch1..."
flag = True
```

### 4. Small Functions

Functions should be small and focused (ideally < 20 lines).

### 5. Error Handling

Handle errors explicitly and meaningfully.

```python
# Good
try:
    coin_record = await get_coin_record(coin_id)
except CoinNotFoundError:
    logger.warning(f"Coin {coin_id} not found, may have been spent")
    return None
except RPCError as e:
    logger.error(f"RPC failed: {e}")
    raise

# Bad
try:
    coin_record = await get_coin_record(coin_id)
except:
    pass
```

### 6. Comments

Write self-documenting code. Use comments for "why", not "what".

```python
# Good: Explains why
# Using 6 confirmations for security against reorgs
MIN_CONFIRMATIONS = 6

# Bad: Explains what (obvious from code)
# Set x to 5
x = 5
```

---

## Commit Guidelines

We use [Conventional Commits](https://www.conventionalcommits.org/).

### Format

```
<type>(<scope>): <description>

[optional body]

[optional footer]
```

### Types

| Type | Description |
|------|-------------|
| `feat` | New feature |
| `fix` | Bug fix |
| `docs` | Documentation only |
| `style` | Formatting, no code change |
| `refactor` | Code change that neither fixes nor adds |
| `perf` | Performance improvement |
| `test` | Adding/updating tests |
| `chore` | Build process, dependencies |

### Examples

```bash
feat(wallet): add support for CAT2 tokens

fix(rpc): handle timeout errors gracefully

docs(readme): add gaming section

refactor(puzzles): extract common validation logic
```

---

## Pull Request Process

### Before Submitting

1. **Run all checks locally:**
   ```bash
   pre-commit run --all-files
   ```

2. **Write/update tests** for your changes

3. **Update documentation** if needed

4. **Keep PRs focused** - one feature/fix per PR

### PR Template

```markdown
## Description
Brief description of changes

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Breaking change
- [ ] Documentation update

## Testing
How was this tested?

## Checklist
- [ ] Pre-commit hooks pass
- [ ] Tests added/updated
- [ ] Documentation updated
- [ ] No security vulnerabilities introduced
```

### Review Process

1. Automated checks must pass
2. At least one approval required
3. Address all review comments
4. Squash commits if requested

---

## Best Practice Resources

Located in `references/best-practices/`:

| Resource | Description |
|----------|-------------|
| [clean-code-javascript](references/best-practices/clean-code-javascript) | Clean code principles for JS |
| [clean-code](references/best-practices/clean-code) | General clean code techniques |
| [best-coding-practices](references/best-practices/best-coding-practices) | Curated best practices |
| [awesome-code-review](references/best-practices/awesome-code-review) | Code review resources |

### External Resources

- [Chia Developer Documentation](https://docs.chia.net/)
- [Chialisp Developer Guide](https://chialisp.com/)
- [Python Style Guide (PEP 8)](https://peps.python.org/pep-0008/)
- [TypeScript Best Practices](https://www.typescriptlang.org/docs/handbook/declaration-files/do-s-and-don-ts.html)

---

## Security

- Never commit secrets, keys, or credentials
- Run `gitleaks` before pushing
- Report security issues privately
- Follow secure coding practices for blockchain code

---

## Questions?

Open an issue for questions or discussions about contributing.
