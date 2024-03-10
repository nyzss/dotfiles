if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source

#export NNN_PLUG=''

#set -x NNN_PLUG ';p:preview-tui;t:preview-tabbed'

#alias nnn "nnn -e"


alias icat "kitten icat"

alias nvim "nvim +'set noet'"

set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -gx MANROFFOPT "-c"

set -gx BROWSER google-chrome-stable

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
#source ~/.cache/wal/colors-tty.sh
