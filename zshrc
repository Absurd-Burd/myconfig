source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(starship init zsh)"
eval "$(zoxide init zsh)" 
alias gs='git status'
alias ls="eza --all --long --header --icons=auto --group-directories-first"
alias cd="z"
alias yy='yazi'
alias ff='fastfetch'
alias nq='networkQuality'
bindkey '^F' vi-forward-word
