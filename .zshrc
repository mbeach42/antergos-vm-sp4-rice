BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

export LANG=en_CA.UTF-8
export LC_CTYPE=en_CA.UTF-8
export LANGUAGE=en_CA.UTF-8
export LC_ALL=en_CA.UTF-8
export LC_COLLATE=en_CA.UTF-8
export LANG=en_US.en_CA-8


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

vmware-toolbox-cmd timesync enable

##########################################
# Sane defaults
# ##########################################
alias ls='ls --color=auto'
alias rm='rm -rf'
alias df='df -h'

##########################################
# SHH Stuff
##########################################
# One-liner to add ssh keys
# ssh user@example.com 'mkdir -p .ssh && cat >> .ssh/authorized_keys' < ~/.ssh/id_rsa.pub
# cat ~/.ssh/id_rsa.pub | ssh user@hostname 'cat >> .ssh/authorized_keys'

alias mars='ssh mbeach@mars.perimeterinstitute.ca'
alias titan='ssh mbeach@titanxp'
alias titanl='ssh -L localhost:8008:127.0.0.1:9999 mbeach@titanxp'
alias titanfs='sshfs mbeach@titanxp:/home/mbeach /mnt/titan'  # -C' (for compression)

alias graham='ssh mbeach@graham.sharcnet.ca'

alias pacman='sudo pacman'

##########################################
# Screen Resolution
##########################################
#cvt 1680 1050 60
#sudo xrandr --newmode "1680x1050_60.00"
alias hd='xrandr --output Virtual-1 --mode hd'
alias home='xrandr --output Virtual-1 --mode 1920x1200'
alias sp4='xrandr --output Virtual-1 --mode sp4'
alias qhd='xrandr --output Virtual-1 --mode qhd' 


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


# Replace a line 
function font_small {
	sed -i 's/Monospace\ 24/Monospace\ 12/g' ~/.config/termite/config
	sed -i 's/\:size=25/\:size=12/g' ~/.config/polybar/config
	sed -i 's/height=50/height=28/g' ~/.config/polybar/config
	sed -i 's/-scale-factor=2/-scale-factor=1/g' ~/.config/chromium-flags.conf
}

function font_big {
	sed -i 's/Monospace\ 12/Monospace\ 24/g' ~/.config/termite/config
	sed -i 's/\:size=12/\:size=25/g' ~/.config/polybar/config
	sed -i 's/height=28/height=50/g' ~/.config/polybar/config
	sed -i 's/-scale-factor=1/-scale-factor=2/g' ~/.config/chromium-flags.conf
}
