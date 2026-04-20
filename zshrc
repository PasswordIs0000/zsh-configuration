# use locale english (ireland): english text, but date, time and currency as in german
export LANG=en_IE.UTF-8

# disable the beep in the shell
unsetopt beep

# no permanent history file
unset HISTFILE

# i like nano as my default editor
export EDITOR=/usr/bin/nano

# python environments using pyenv
if [[ -d $HOME/.pyenv ]]; then
  export PYENV_ROOT="$HOME/.pyenv"
  [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
  if command -v pyenv &> /dev/null; then
    eval "$(pyenv init - zsh)"
    eval "$(pyenv virtualenv-init -)"
  fi
fi

# spaceship prompt
[[ -d $HOME/.zsh/spaceship-prompt ]] && source "$HOME/.zsh/spaceship-prompt/spaceship.zsh"

# plugins
[[ -d $HOME/.zsh/zsh-syntax-highlighting ]] && source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[[ -d $HOME/.zsh/zsh-autosuggestions ]] && source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# better color for the autosuggest completion
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=248"

# keybindings
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char

# function to update zsh plugins and themes
zsh_update() {
  local DIR=""
  if command -v git &> /dev/null; then
    for DIR in $HOME/.zsh/*; do
      if [[ -d $DIR ]]; then
        echo "Updating $DIR"
        git -C $DIR pull
      fi
    done
  else
    echo "No git command available!"
  fi
}
