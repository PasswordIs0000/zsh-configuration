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
source ~/.zsh/themes/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# plugins
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# better color for the autosuggest completion
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=248'

# somehow the DEL key got rebound to ~, lets fix this!
bindkey "\e[3~" delete-char
