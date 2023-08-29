# p10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

# Exports & ZSH settings
export PATH
export PATH="$HOME/.cargo/bin:$PATH"
export SUDO_EDITOR=$(which hx)
export ZSH=$HOME/.zsh
export HISTFILE=$ZSH/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

# Keybindings
bindkey "^[[3~" delete-char          # Delete button
bindkey "^[[1;5A" beginning-of-line  # CTRL + UP
bindkey "^[[1;5B" end-of-line        # CTRL + DOWN
bindkey "^[[1;5C" forward-word       # CTRL + RIGHT
bindkey "^[[1;5D" backward-word      # CTRL + LEFT
bindkey "^[[3;5~" delete-word        # CTRL + Del
bindkey "^H" backward-delete-word    # CTRL + Backspace

# Themes & Plugins
source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=($ZSH/plugins/zsh-completions/src $fpath)
source $ZSH/themes/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

sed -e :a -e 's/^.\{1,79\}$/ & /;ta' -e 's/^ *\(.\{1,79\}\) *$/\1/' <$ZSH/logo.txt
motivate