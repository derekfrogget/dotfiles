abbr -a psu sudo pacman -Syu
abbr -a sps sudo pacman -S
abbr -a pf pacman -F
abbr -a pq pacman -Q
abbr -a pqe pacman -Qe
abbr -a spr sudo pacman -Rs
abbr -a pss pacman -Ss
abbr -a psi "pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
