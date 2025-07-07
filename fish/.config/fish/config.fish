# Keychain
# if status --is-interactive
# keychain --eval --quiet --agents gnome-keyring -Q (ls $HOME/.ssh/*.pub | xargs -n 1 basename -s .pub) | source
# end

# begin
#     set -l HOSTNAME (hostname)
#     if test -f $HOME/.keychain/$HOSTNAME-fish
#         source $HOME/.keychain/$HOSTNAME-fish
#     end
# end

# Keybindings
## Navigation
bind ctrl-up beginning-of-line
bind ctrl-down end-of-line
bind ctrl-backspace backward-kill-word
bind ctrl-delete kill-word

## Shortcuts
bind alt-h 'hx .'
bind alt-f fg

# Path
set PATH "$PATH:/home/derek/go/bin/"

# Preferences
set -gx SHELL /usr/bin/fish
set -gx EDITOR /usr/bin/hx
set -gx DOTFILES $HOME/dotfiles
set -gx DISTRO arch
set -gx WM hypr

set -gx fish_browser google-chrome-stable

# Distro config
source (resolvedot fish)/$DISTRO.fish

# WM-specific config
source (resolvedot fish)/$WM.fish

# Abbreviations
abbr -a ls lsd
abbr -a la lsd -la
abbr -a lt lsd -lta
abbr -a cd z
abbr -a cat bat
abbr -a find fd

abbr -a updisc sudo hx /opt/discord/resources/build_info.json
abbr -a xclip xclip -selection clipboard
abbr -a shutdown shutdown -P now

## Config file abbreviations
### Independent
abbr -a edfish "$EDITOR $(resolvedot fish) && source $(resolvedot fish)/config.fish"
abbr -a edhelix $EDITOR (resolvedot helix)
abbr -a edhalloy $EDITOR (resolvedot halloy)
abbr -a edwezterm $EDITOR (resolvedot wezterm)
abbr -a edghostty $EDITOR (resolvedot ghostty)/config

abbr -a edpolybar $EDITOR (resolvedot polybar)/config.ini

# Misc
zoxide init fish | source

set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
status --is-interactive; and pyenv init - | source
