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

set -gx XBPS_DISTDIR /repos/void-packages/
