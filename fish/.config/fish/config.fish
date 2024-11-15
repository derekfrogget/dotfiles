bind \e\[1\;5A beginning-of-line
bind \e\[1\;5B end-of-line
bind \b backward-kill-word
bind \e\[3\;5~ kill-word

abbr -a edfish hx ~/.config/fish/config.fish
abbr -a edhelix hx ~/.config/helix
abbr -a edpolybar hx ~/.config/polybar/config.ini
abbr -a edbspwm hx ~/.config/bspwm/bspwmrc
abbr -a edsxhkd hx ~/.config/sxhkd/sxhkdrc
abbr -a edhalloy hx ~/.config/halloy
abbr -a edwezterm hx ~/.config/wezterm
abbr -a edghostty hx ~/.config/ghostty/config

abbr -a sxi sudo xbps-install
abbr -a xis sudo xbps-install -S
abbr -a xisu sudo xbps-install -Su
abbr -a xrr sudo xbps-remove -R
abbr -a xqr xbps-query -Rs

function lnsv
    sudo ln -s /etc/sv/$argv /var/service/
end
complete -c lnsv -f -a "(comm -23 (ls /etc/sv/ | psub) (ls /var/service/ | psub))"

function ulsv
    sudo unlink /var/service/$argv
end
complete -c ulsv -f -a "(ls /var/service)"

abbr -a ls lsd
abbr -a la lsd -la
abbr -a cd z
abbr -a cat bat
abbr -a find fd
abbr -a fd "fd --color=always | bat --color=always"

abbr -a updisc sudo hx /usr/lib/discord/resources/build_info.json
abbr -a xclip xclip -selection clipboard
abbr -a arch distrobox enter arch-toolbox

zoxide init fish | source

set -gx XBPS_DISTDIR /repos/void-packages/
set -gx PIP_HOME "/home/$USER/.local/bin"
set -gx PATH "$PIP_HOME" $PATH
set -gx SHELL /usr/bin/fish
set -gx EDITOR /usr/bin/hx

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

pyenv init - | source
