# Path
source (resolvedot fish)/path.fish

# Preferences
set -gx SHELL fish
set -Ux EDITOR hx
set -Ux TERMINAL ghostty
set -gx DOTFILES $HOME/dotfiles
set -Ux DISTRO arch
set -Ux WM hypr

set -g fish_browser google-chrome-stable

# Keybindings
## Moved to functions/fish_user_key_bindings.fish

# Distro config
source (resolvedot fish)/$DISTRO.fish

# WM-specific config
source (resolvedot fish)/$WM.fish

# Abbreviations
if command -q lsd
    abbr -a ls lsd
    abbr -a la lsd -la
    abbr -a lt lsd -lta
end

if command -q zoxide
    abbr -a cd z
end

if command -q bat
    abbr -a cat bat
end

if command -q fd
    abbr -a find fd
end

abbr -a updisc sudo hx /opt/discord/resources/build_info.json
abbr -a xclip xclip -selection clipboard
abbr -a shutdown shutdown -P now

## Independent config file abbreviations
abbr -a edfish "$EDITOR $(resolvedot fish); and source $(resolvedot fish)/config.fish"
abbr -a edhelix $EDITOR (resolvedot helix)
abbr -a edhalloy $EDITOR (resolvedot halloy)
abbr -a edwezterm $EDITOR (resolvedot wezterm)
abbr -a edghostty $EDITOR (resolvedot ghostty)/config

abbr -a edpolybar $EDITOR (resolvedot polybar)/config.ini

abbr -a edssh $EDITOR $HOME/.ssh/config

# Misc
zoxide init fish | source
## fzf plugin
# set fzf_diff_highlighter difft
