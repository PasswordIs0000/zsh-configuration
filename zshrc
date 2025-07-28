# should be at the very top!
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# disable the beep in the shell
unsetopt beep

# no permanent history file
unset HISTFILE

# i like nano as my default editor
export EDITOR=/usr/bin/nano

# python environments using pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
eval "$(pyenv virtualenv-init -)"

# programs in my home directory
export PATH="$HOME/.local/bin:$PATH"

# powerlevel10k theme
source $HOME/.zsh/themes/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f $HOME/.p10k.zsh ]] || source $HOME/.p10k.zsh

# plugins
source $HOME/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# better color for the autosuggest completion
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=248'

# somehow the DEL key got rebound to ~, lets fix this!
bindkey "\e[3~" delete-char

# function to update zsh plugins and themes
update_zsh_plugins_themes() {
  for dir in $HOME/.zsh/*/*; do
    if [ -d "$dir" ]; then
      echo "Updating $dir"
      git -C $dir pull
    fi
  done
}

# alias to update zsh plugins and themes
alias zsh_update='update_zsh_plugins_themes'
