#!/bin/bash

if ! command -v gh &> /dev/null
then
    echo "GitHub CLI could not be found. Install from https://cli.github.com or https://github.com/cli/cli"
    exit
fi

echo "Please enter your OpenAI API key:"
read OPENAI_API_KEY
echo "You entered: $OPENAI_API_KEY"

echo "export OPENAI_API_KEY=$OPENAI_API_KEY" >> ~/.bashrc
source ~/.bashrc

# Print the latest release binary 
LATEST_RELEASE=$(gh api -H "Accept: application/vnd.github+json" -H "X-GitHub-Api-Version: 2022-11-28" /repos/ghcli/gh-commit/releases --jq '.[0].tag_name')
echo "Latest release: $LATEST_RELEASE"

# Install GitHub CLI extension 
gh extension install ghcli/commit 

# Create Git alias
git config --global alias.auto-commit '!git commit -m "$(gh commit)" || git commit -a -m "$(gh commit)" && git log HEAD...HEAD~1'

echo "Commit GitHub CLI extension installed successfully!"
echo "Usage: git auto-commit"
echo "Usage: gh commit"