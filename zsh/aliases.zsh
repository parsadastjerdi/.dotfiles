# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="hx ~/.zshrc"
alias ohmyzsh="hx ~/.oh-my-zsh"
alias hxconfig="hx ~/.config/helix/config.toml"
alias hxlangconfig="hx ~/.config/helix/languages.toml"
alias loadzsh="source ~/.zshrc"

alias la="ls -A"
alias ll="ls -l"

# cargo aliases
alias cb="cargo build"
alias cbr="cargo build --release"
alias crr="cargo run" # would conflict with cr tool
alias cc="cargo check"

# golang aliases
alias prisma="go run github.com/prisma/prisma-client-go"