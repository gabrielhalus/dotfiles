alias ll="ls -l"
alias la="ls -la"

alias vim="nvim"
alias vi="nvim"

export EDITOR="nvim"

eval "$(starship init zsh)"

export PATH="$HOME/.local/bin:$PATH"

 export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
