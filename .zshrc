alias vim="nvim"
alias ls="eza --group-directories-first"

if [[ $(uname -s) == "Darwin" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
    export HOMEBREW_NO_AUTO_UPDATE=1
fi

export PATH="$(brew --prefix python)/libexec/bin:$PATH"

export PATH="$PATH:$HOME/.cache/go/bin"
export GOPATH="$HOME/.cache/go"
export GOMODCACHE="$HOME/.cache/go/pkg/mod"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(zoxide init zsh --cmd cd)"

eval "$(starship init zsh)"
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
