#!/bin/zsh -df

#######################################
## atom smasher's wormhole-send-qr: send data via magic wormhole and get a qr-code, all from cli
## https://github.com/atom-smasher/wormhole-send-qr
## v1.0       14 feb 2026
## v1.1       17 feb 2026
## Distributed under the GNU General Public License
## http://www.gnu.org/copyleft/gpl.html

## this could be a one-liner, but it's easier to read when it's not
# wormhole send "${@}" > >( awk '/^wormhole receive/ { print $3; exit }' | qrencode -t ANSI256UTF8 -m 2 -8 ) > >( cat - > /dev/stderr ) 2>&1

trap '' PIPE

## normal terminal output from wormhole is sent to stderr. that convention is maintained here.

wormhole send "${@}" 2>&1 | {
    > >( cat - > /dev/stderr ) \
    > >( awk '/^wormhole receive/ { print $3; exit }' | qrencode -t ANSI256UTF8 -m 2 -8 > /dev/stderr ) 
}
