# Commit - Automated Git Commit Messages with LLM 🤖📝
Artfully create commit messages that reflect the essence of your code changes 🎨🔍. Craftsmanship for your commits 👨‍🎨. Unleash the power of language models to automate your Git commit messages 🌐🤖. With Commit, save time ⏰ and generate meaningful commit messages based on your code changes 📜.

The average person types around 40 words per minute. Imagine an AI has written 573 words in commit messages, a human would have taken approximately 14.32 minutes to write the same quantity of words. 

If we calculate the time taken for a human to make an individual commit, assuming it takes around 5 minutes per commit on average, for the 29 commits made by AI, a human would have taken approximately 145 minutes or 2.42 hours.

Hence, in total (commit making and message writing time), a human would have taken approximately 2.62 hours. 🕰️ Given that all this work was done by an AI, we can say 2.62 hours of human-time was saved. 

By extrapolating these numbers, if 1000 commits were made, it would save approximately 90 hours of human-time assuming the ratio of words per commit remains constant. If a software development team consists of 5 people, this time saving allows for roughly 18 additional hours per person, which increases productivity, efficiency, reduces burnout and leaves additional time for creative, challenging tasks or problem solving that AI can't do.👩‍💻👨‍💻

This not only displays AI's potential role in tech automation, but also shows how it helps in giving human employees the bandwidth to focus on work that requires human intelligence and creativity, creating a more balanced and efficient work environment. 🏢🚀📈

If we take into consideration the larger tech industry where millions of commits are made daily, we’re potentially looking at thousands of hours saved per day by utilising AI in this manner! 💡+ AI bot saves the day again! 🚀🌟

Fun Fact: Using an AI to write commits and other automations can reduce the risk of Repetitive Strain Injury (RSI), a common condition affecting people who perform repetitive tasks, like typing, for extended periods. 💻🌟

## Table of Contents 📚

- [Features 🌟](#features)
- [Prerequisites 📋](#prerequisites)
- [Installation 🛠️](#installation)
  - [Environment Variables 🌍](#environment-variables)
  - [Complete Install 📦](#complete-install)
- [Usage 🖱️](#usage)
- [Contributing 🤝](#contributing)
  - [How to Contribute 👷‍♂️](#how-to-contribute)
  - [Code of Conduct 📜](#code-of-conduct)
  - [Community 💬](#community)
- [License 📄](#license)
- [Acknowledgements 🙏](#acknowledgements)

## Features 🌟

- **Automated Commit Messages**: Leverages language models to craft meaningful commit messages 🤖💬.
- **Easy to Install**: One command installs everything you need 🚀.
- **GitHub CLI Integration**: Seamlessly integrates as a GitHub CLI extension 🔄.

## Prerequisites 📋

- Go 1.16+ 🟢
- Git 2.30+ 📦
- GitHub CLI 2.0+ 🔗

## Installation 🛠️

### Environment Variables 🌍

Before running AutoCommit, it's advisable to set a few environment variables 🔑:

- `OPENAI_URL`:  Override openai api eg: azure openai (Optional; Default: openai url)
- `OPENAI_API_KEY`: The API key for the GPT-4 model (🚨 **Required**).
- `OPENAI_MODEL`: Specify a different language model 🔄 (Optional; Default: `gpt-4`).
- `FINE_TUNE_PARAMS`: Additional parameters for fine-tuning the model output ⚙️ (Optional; Default: `{}`).

Add these environment variables by appending them to your `.bashrc`, `.zshrc`, or other shell configuration files 📄:

```bash

#For Models hosted on Azure
export OPENAI_URL=https://apiendpoint.openai.azure.com
export OPENAI_MODEL=llm-large
export OPENAI_API_KEY=your-openai-api-key-here
export FINE_TUNE_PARAMS='{"temperature": 0.7}'
```
For Models hosted on OpenAI - Get the API Keys from https://platform.openai.com/account/api-keys
```bash
export OPENAI_URL=https://api.openai.com/v1/
export OPENAI_API_KEY=your-openai-api-key-here 
export OPENAI_MODEL=gpt-4

```

Or, you can set them inline before running the AutoCommit command 🖱️:

```bash
OPENAI_URL=your-openai-api-key-here OPENAI_MODEL=gpt-4 FINE_TUNE_PARAMS='{"temperature": 0.7}' git auto-commit
```

### Complete Install 📦

For an end-to-end installation experience, execute 👇:

```bash
bash <(curl -s https://raw.githubusercontent.com/ghcli/gh-commit/main/install.sh)
```

This comprehensive script accomplishes the following 📋:

1. Downloads the latest `gh-commit` binary ⬇️.
2. Makes the binary executable 🏃.
3. Sets up a Git alias: `auto-commit` 🏷️.
4. Installs the GitHub CLI extension for AutoCommit 🔄.

### Upgrade 📈

To upgrade to the latest version of AutoCommit, execute 📝:

```bash
gh extensions upgrade --all
```

## Usage 🖱️

### Native Git 🌐

To auto-generate a commit message, type ⌨️:

```bash
git auto-commit
```

### GitHub CLI Extension 🔗

For the same functionality through GitHub CLI, execute 🤖:

```bash
gh commit
```

Both commands invoke a Git diff, pass the changes to GPT-4, and craft a commit message based on the model's output 💬🎉.

### Commit Example

![gh-commit-in-action](https://github.com/ghcli/gh-commit/assets/10250297/e531f7f0-60c3-4856-9651-3d50d773e046)


### Commit Example

![ghcommit2](https://github.com/ghcli/gh-commit/assets/10250297/b2cd521d-fa14-4080-b793-31db492bd93c)


## Acknowledgements 🙏

- Thanks to OpenAI & Azure for providing the models 🌐.
- All the contributors who made this project possible 👨‍👩‍👧‍👦.
