BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

source /usr/share/zsh/share/antigen.zsh
#antigen use oh-my-zsh
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
antigen bundle pip
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle python
antigen bundle git
antigen apply

alias ls='ls --color=auto'
alias df='df -h'
alias graham='ssh mbeach@graham.sharcnet.ca'
alias titan='ssh mbeach@10.10.7.148'
alias pacman='sudo pacman'
EDITOR=vim
#git config --global core.excludesFile ~/.gitignore
export PATH="/home/mbeach/anaconda2/bin:$PATH"
alias clear='/usr/bin/clear' # Fix clear bug from anaconda

bindkey "\e[3~" delete-char
