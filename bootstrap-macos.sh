

# Install mono for C# LSP
brew update
brew install mono
brew install homebrew/cask/mono-mdk

# Install Omnisharp-roslyn
brew tap omnisharp/omnisharp-roslyn
# brew install omnisharp # not recommended
brew install omnisharp-mono # recommended

