# Ruby Project

A Ruby project configured with RuboCop 1.48.1 for code linting and style checking.

## Requirements

- Ruby >= 2.6.0 (see Setup for installation options)
- Bundler

## Setup

### Option 1: Using Homebrew Ruby (Recommended for macOS)

The macOS system Ruby has issues with native extensions. Install Ruby via Homebrew:

```bash
# Install Ruby via Homebrew
brew install ruby

# Add Homebrew Ruby to your PATH (add to ~/.zshrc or ~/.bash_profile)
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="$(gem environment gemdir)/bin:$PATH"

# Restart your terminal, then install dependencies
cd ruby-project
bundle install
```

### Option 2: Using rbenv

```bash
# Install rbenv
brew install rbenv ruby-build

# Install a Ruby version
rbenv install 3.2.2
rbenv local 3.2.2

# Install dependencies
bundle install
```

### Option 3: Using rvm

```bash
# Install rvm (follow instructions at https://rvm.io)
\curl -sSL https://get.rvm.io | bash -s stable

# Install Ruby
rvm install 3.2.2
rvm use 3.2.2

# Install dependencies
bundle install
```

## Usage

1. Run RuboCop to check code style:

```bash
bundle exec rubocop
```

2. Auto-correct offenses (where possible):

```bash
bundle exec rubocop -a
```

3. Auto-correct all offenses (including unsafe ones):

```bash
bundle exec rubocop -A
```

## Project Structure

```
ruby-project/
├── Gemfile           # Gem dependencies
├── Gemfile.lock      # Locked gem versions (generated after bundle install)
├── .rubocop.yml      # RuboCop configuration
├── lib/              # Ruby source files
│   └── example.rb    # Example class
└── README.md         # This file
```

## RuboCop Configuration

The `.rubocop.yml` file contains project-specific RuboCop configuration:

- Target Ruby version: 2.6
- New cops are enabled by default
- Line length max: 120 characters
- Frozen string literal comments enforced

## Troubleshooting

### "Failed to build gem native extension" on macOS

The macOS system Ruby (2.6.x) has issues with native gem compilation. Use one of the installation options above to install a proper Ruby version.

## License

MIT
