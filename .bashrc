## history
alias hist='history | grep'

# git shortcuts. gortcuts
alias glone="git clone"
alias gomit="git commit -am"
alias gush="git push"
alias gull="git pull"
alias gadd="git add"
alias gubmodule="git submodule"
alias gash="git stash"
alias gatus="git status"
alias granch="git branch"

## snarky typo messages
alias lsd='echo "aint no time for trippin, man"'
alias cdc='echo "centre for disease control?"'
alias sl='echo "Backwards again, you fat-handed twat"' 

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac


if [ "$color_prompt" = yes ]; then
    PS1="\[\033[1;33m\]{`date +%H:%M`}\[\033[1;31m\]/\W \[\033[1;32m\]>>>\[\033[00m\]"	
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


