# function fish_prompt -d "Write out the prompt"
#     # This shows up as USER@HOST /home/user/ >, with the directory colored
#     # $USER and $hostname are set by fish, so you can just use them
#     # instead of using `whoami` and `hostname`
#     printf '%s@%s %s%s%s > ' $USER $hostname \
#         (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
# end
#
# if status is-interactive
#     # Commands to run in interactive sessions can go here
#     set fish_greeting
#
# end
#
# starship init fish | source
# if test -f ~/.cache/ags/user/generated/terminal/sequences.txt
#     cat ~/.cache/ags/user/generated/terminal/sequences.txt
# end

if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source

#export NNN_PLUG=''

#set -x NNN_PLUG ';p:preview-tui;t:preview-tabbed'

#alias nnn "nnn -e"


alias icat "kitten icat"

alias nvim "nvim +'set noet'"

set -gx BAT_THEME "base16"
set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -gx MANROFFOPT "-c"

set -gx BROWSER google-chrome-stable

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

alias francinette=/home/nyzs/francinette/tester.sh

alias paco=/home/nyzs/francinette/tester.sh

# To add support for TTYs this line can be optionally added.
#source ~/.cache/wal/colors-tty.sh

# alias pamcan=pacman

# function fish_prompt
#   set_color cyan; echo (pwd)
#   set_color green; echo '> '
# end
