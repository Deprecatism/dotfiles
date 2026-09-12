
export ZSH="$HOME/.oh-my-zsh"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 1

ENABLE_CORRECTION="true"
plugins=(git kitty zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

export PATH=$PATH:~/.spicetify
export PATH=$PATH:/home/deppie/.cargo/bin
export PATH=$PATH:/home/deppie/.spicetify
export PATH=$PATH:/home/deppie/.local/bin
export PATH=$PATH:/home/deppie/.local/share/pnpm

eval "$(pyenv init - zsh)"
eval "$(starship init zsh)"

if [[ $TERM = "xterm-kitty" ]]; then
    eval fastfetch
fi
