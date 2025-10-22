#!/bin/bash

# Setup script to configure CLAUDE_PRIVATE.md in global gitignore
# This script uses Claude Code CLI to handle the configuration

set -e

echo "=========================================="
echo "CLAUDE_PRIVATE.md Global Gitignore Setup"
echo "=========================================="
echo ""
echo "This script will configure your global gitignore to exclude CLAUDE_PRIVATE.md files."
echo ""

# Check if claude command is available
if ! command -v claude &> /dev/null; then
    echo "Error: Claude Code CLI not found."
    echo "Please install Claude Code CLI first."
    echo "Visit: https://docs.claude.com/claude-code"
    exit 1
fi

echo "Invoking Claude Code to configure global gitignore..."
echo ""

# Use Claude Code with the slash command to configure global gitignore
claude /sysadmin:linux-desktop:git:check-global-gitignore

echo ""
echo "=========================================="
echo "Setup Complete!"
echo "=========================================="
echo ""
echo "CLAUDE_PRIVATE.md is now globally ignored across all your git repositories."
echo "You can safely create CLAUDE_PRIVATE.md files in any repository without risk of committing them."
echo ""
