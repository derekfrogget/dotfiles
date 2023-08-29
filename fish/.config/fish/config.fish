if status is-interactive
    # Commands to run in interactive sessions can go here
end


bind \e\[1\;5A beginning-of-line
bind \e\[1\;5B end-of-line
bind \b backward-kill-word
bind \e\[3\;5~ kill-word

abbr -a editfish hx ~/.config/fish/config.fish
abbr -a editi3 hx ~/.config/i3/config
abbr -a editalacritty hx ~/.config/alacritty/alacritty.yml
abbr -a edithelix hx ~/.config/helix/config.toml

abbr -a yay paru
abbr -a du 'du / -h 2>/dev/null | sort -hr | less'
abbr -a ls lsd
abbr -a sp sudo pacman
abbr -a sps sudo pacman -S
abbr -a cd z

zoxide init fish | source
