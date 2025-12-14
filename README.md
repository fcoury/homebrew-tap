# Homebrew Tap for tsql

A modern, keyboard-first PostgreSQL CLI.

## Installation

```bash
brew install fcoury/tap/tsql
```

Or:

```bash
brew tap fcoury/tap
brew install tsql
```

## Upgrading

```bash
brew upgrade tsql
```

## Releasing New Versions

**1. In the tsql repo**, update version and tag:

```bash
# Update version in Cargo.toml
# [workspace.package]
# version = "0.2.0"

git add Cargo.toml Cargo.lock
git commit -m "chore: bump version to 0.2.0"
git push origin main

# Create and push tag to trigger release
git tag -a v0.2.0 -m "Release v0.2.0"
git push origin v0.2.0
```

**2. Wait for the GitHub Actions release workflow** to complete (builds binaries, publishes to crates.io).

**3. Update the Homebrew tap**:

```bash
# Get new checksums
curl -sL https://github.com/fcoury/tsql/releases/download/v0.2.0/SHA256SUMS.txt

# Update Formula/tsql.rb with new version and sha256 values

git add Formula/tsql.rb
git commit -m "Update tsql to v0.2.0"
git push
```

**4. Users upgrade with**:

```bash
brew upgrade tsql
```
