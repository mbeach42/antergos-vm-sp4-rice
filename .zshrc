#BASE16_SHELL=$HOME/.config/base16-shell/
#[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
	eval "$("$BASE16_SHELL/profile_helper.sh")"

#LD_LIBRARY_PATH=/usr/lib/

EDITOR=vim

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

export PYTHONPATH="/home/meach/.cond/envs/ml/bin/python"


alias todo='todolist list by project'
alias todod='todolist list by date'
alias complete='todolist complete'

alias py='python'
alias jl='julia'
alias jul='~/Downloads/julia-1.0.0/bin/julia'
alias ls='ls --color=auto'
alias df='df -h'
alias rm='rm -f'

alias mars='ssh -X mbeach@mars.perimeterinstitute.ca'
alias graham='ssh  -X mbeach@graham.sharcnet.ca'
alias titan='ssh -X mbeach@titanxp'
alias titanfs='sshfs mbeach@mars:/home/mbeach /home/meach/ -C'
alias grahamfs='sshfs mbeach@graham.sharcnet.ca:/home/mbeach /home/meach/ -C'

alias pacman='sudo pacman'

alias hd='xrandr --output Virtual-1 --mode hd'
alias home='xrandr --output Virtual-1 --mode 1920x1200'
alias sp4='xrandr --output Virtual-1 --mode sp4'

# One-liner to add ssh keys
# ssh user@example.com 'mkdir -p .ssh && cat >> .ssh/authorized_keys' < ~/.ssh/id_rsa.pub

EDITOR=vim
export LD_LIBRARY_PATH="/usr/lib:$PATH"
#git config --global core.excludesFile ~/.gitignore
export PATH="/home/mbeach/anaconda2/bin:$PATH"
alias clear='/usr/bin/clear' # Fix clear bug from anaconda
bindkey "\e[3~": delete-char
bindkey "\e[1~": beginning-of-line
bindkey "\e[4~": end-of-line
# kvt
#bindkey "\e[H":beginning-of-line
#bindkey "\e[F":end-of-line
## rxvt and konsole (i.e. the KDE-app...)
#bindkey "\e[7~":beginning-of-line
#bindkey "\e[8~":end-of-line


PATH="/opt/anaconda/bin:$PATH"
source activate ml


#PATH="/home/mbeach/perl5/bin${PATH:+:${PATH}}"; export PATH;
#PERL5LIB="/home/mbeach/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
#PERL_LOCAL_LIB_ROOT="/home/mbeach/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
#PERL_MB_OPT="--install_base \"/home/mbeach/perl5\""; export PERL_MB_OPT;
#PERL_MM_OPT="INSTALL_BASE=/home/mbeach/perl5"; export PERL_MM_OPT;


# Replace a line 
function small {
	sed -i '2s/.*/font = Input Mono Compressed Light 8/' ~/.config/termite/config
}
function big {
	sed -i '2s/.*/font = Input Mono Compressed Light 12/' ~/.config/termite/config
	#sed -i 's/-scale-factor=1/-scale-factor=2/g' ~/.config/chromium-flags.conf
}

cd Dropbox/current-projects/vqaoa/src/
#todolist list by date
