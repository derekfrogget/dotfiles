# Keychain
if status --is-interactive
    keychain --eval --quiet --agents gnome-keyring -Q (ls $HOME/.ssh/*.pub | xargs -n 1 basename -s .pub) | source
end

# begin
#     set -l HOSTNAME (hostname)
#     if test -f $HOME/.keychain/$HOSTNAME-fish
#         source $HOME/.keychain/$HOSTNAME-fish
#     end
# end

# Keybindings
bind \e\[1\;5A beginning-of-line # CTRL + UP
bind \e\[1\;5B end-of-line # CTRL + DOWN
bind \b backward-kill-word # CTRL + BACKSPACE
bind \e\[3\;5~ kill-word # CTRL + DEL

# Path
set PATH "$PATH:/home/derek/go/bin/"

# Preferences
set -gx SHELL /usr/bin/fish
set -gx EDITOR /usr/bin/hx
set -gx DOTFILES $HOME/dotfiles
set -gx DISTRO arch

# Distro config
source (resolvedot fish)/$DISTRO.fish

# Abbreviations
abbr -a ls lsd
abbr -a la lsd -la
abbr -a lt lsd -lta
abbr -a cd z
abbr -a cat bat
abbr -a find fd

abbr -a updisc sudo hx /usr/lib/discord/resources/build_info.json
abbr -a xclip xclip -selection clipboard
abbr -a shutdown shutdown -P now

## Config file abbreviations
### Independent
abbr -a edfish "$EDITOR $(resolvedot fish) && source $(resolvedot fish)/config.fish"
abbr -a edhelix $EDITOR (resolvedot helix)
abbr -a edhalloy $EDITOR (resolvedot halloy)
abbr -a edwezterm $EDITOR (resolvedot wezterm)
abbr -a edghostty $EDITOR (resolvedot ghostty)/config

### Hyprland
abbr -a edhypr $EDITOR (resolvedot hypr)/

### BSPWM
abbr -a edpolybar $EDITOR (resolvedot polybar)/config.ini
abbr -a edbspwm $EDITOR (resolvedot bspwm)/bspwmrc
abbr -a edsxhkd $EDITOR (resolvedot sxhkd)/sxhkdrc

# Misc
zoxide init fish | source
