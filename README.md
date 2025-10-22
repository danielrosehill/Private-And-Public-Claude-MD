# Private and Public Claude.md Setup

## Overview

This repository provides tools to manage both public (`CLAUDE.md`) and private (`CLAUDE_PRIVATE.md`) configuration files for Claude Code, while ensuring private configuration files are automatically excluded from version control.

## Purpose

- **CLAUDE.md**: Project-specific instructions that can be safely committed to version control
- **CLAUDE_PRIVATE.md**: Private/sensitive instructions that should never be committed (API keys, personal preferences, private system details, etc.)

## Setup

### Automatic Global Gitignore Setup

Run the included setup script to configure your global gitignore:

```bash
./setup-claude-private-gitignore.sh
```

This script will:
1. Check if you have a global gitignore file configured
2. Create one if it doesn't exist (at `~/.gitignore_global`)
3. Add `CLAUDE_PRIVATE.md` to the global gitignore if not already present
4. Configure git to use the global gitignore file

### Manual Setup

If you prefer to set this up manually:

1. Check your current global gitignore:
   ```bash
   git config --global core.excludesfile
   ```

2. Create or edit the global gitignore file:
   ```bash
   echo "CLAUDE_PRIVATE.md" >> ~/.gitignore_global
   ```

3. Configure git to use it:
   ```bash
   git config --global core.excludesfile ~/.gitignore_global
   ```

## Usage

1. **Public Instructions**: Add general, non-sensitive project instructions to `CLAUDE.md`
2. **Private Instructions**: Add sensitive or personal instructions to `CLAUDE_PRIVATE.md`
3. **Commit Safely**: Only `CLAUDE.md` files will be tracked by git; `CLAUDE_PRIVATE.md` files are automatically ignored globally

## Benefits

- **Security**: Never accidentally commit sensitive information
- **Flexibility**: Use private instructions across all your repositories
- **Simplicity**: One-time setup applies to all repositories on your system

## Files in This Repository

- `README.md`: This file
- `setup-claude-private-gitignore.sh`: Automated setup script
- `commands/global-claude-private.md`: Slash command for Claude Code to perform setup

## Requirements

- Git installed and configured
- Bash shell
- Claude Code CLI (for automated setup script)