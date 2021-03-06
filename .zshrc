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
antigen bundle common-aliases
antigen apply

alias ls='ls --color=auto'
alias df='df -h'
alias mars='ssh mbeach@mars.perimeterinstitute.ca'
alias graham='ssh mbeach@graham.sharcnet.ca'
alias titan='ssh mbeach@10.10.7.148'
alias pacman='sudo pacman'
alias hd='xrandr --output Virtual-1 --mode hd'
alias home='xrandr --output Virtual-1 --mode 1920x1200'
alias sp4='xrandr --output Virtual-1 --mode sp4'

# One-liner to add ssh keys
# ssh user@example.com 'mkdir -p .ssh && cat >> .ssh/authorized_keys' < ~/.ssh/id_rsa.pub

EDITOR=vim
#git config --global core.excludesFile ~/.gitignore
export PATH="/home/mbeach/anaconda2/bin:$PATH"
alias clear='/usr/bin/clear' # Fix clear bug from anaconda

bindkey "\e[3~" delete-char

PATH="/home/mbeach/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/mbeach/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/mbeach/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/mbeach/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/mbeach/perl5"; export PERL_MM_OPT;
