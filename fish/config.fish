if status is-interactive
    # Commands to run in interactive sessions can go here
end
alias lsd="exa -l --icons"
alias lst="exa -l -T --icons"
alias rlf="source ~/.config/fish/config.fish"
starship init fish | source

alias icat="kitty +kitten icat"
set -g fish_greeting
neofetch

if [ -f $HOME/.config/fish/nnn.fish ]
    source $HOME/.config/fish/nnn.fish
end
