# Homebrew Tap [![Powered By: GoReleaser](https://img.shields.io/badge/powered%20by-goreleaser-green.svg?style=flat-square)](https://github.com/goreleaser)

Homebrew tap for [Word2VecT](https://github.com/Word2VecT), including Flameshoter and packages inherited from [indaco/tap](https://github.com/indaco/homebrew-tap).

## Available Packages

| Package         | Description                                                                           |
| --------------- | ------------------------------------------------------------------------------------- |
| [flameshoter](#flameshoter) | macOS screenshot and annotation app with native Liquid Glass and Chinese UI. |
| [malt](#malt)   | A lightweight Homebrew-compatible client with a native TUI.                           |
| [sley](#sley)   | A CLI tool for managing semantic versioning using a .version file.                    |
| [tempo](#tempo) | A CLI tool for managing assets and scaffolding components in templ-based Go projects. |

---

## flameshoter

Flameshot-based screenshots and annotation with native macOS Liquid Glass controls and Chinese/English UI. Requires Apple Silicon and macOS 26 or later.

```sh
brew install --cask Word2VecT/tap/flameshoter
```

**GitHub:** [Word2VecT/flameshoter](https://github.com/Word2VecT/flameshoter)

The initial release is ad hoc signed and not notarized. See the app's installation notes for the system's first-launch and screen-recording prompts.

---

## malt

Homebrew's whole ecosystem, none of its weight - a single Zig binary with native post_install and a themeable TUI & CLI

**GitHub:** <https://github.com/indaco/malt>

---

## sley

CLI for semantic versioning using a simple .version file. Language-agnostic with plugins for git tagging, changelog generation, versioning policies and more.

**GitHub:** <https://github.com/indaco/sley>

---

## tempo

A CLI tool for managing assets and scaffolding components in templ-based Go projects.

**GitHub:** <https://github.com/indaco/tempo>

---

## Setup

```bash
brew tap Word2VecT/tap
```

## Usage

### Install a package

```bash
brew install Word2VecT/tap/<package-name>
```

### Upgrade a package

```bash
brew upgrade Word2VecT/tap/<package-name>
```

### Uninstall a package

```bash
brew uninstall <package-name>
```

### Remove the Tap

```bash
brew untap Word2VecT/tap
```
