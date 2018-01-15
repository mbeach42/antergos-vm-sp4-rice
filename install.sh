##################################################
# Installation script for Arch linux/Antergos setup
##################################################

# Replace yaourt with trizen
yaourt -S trizen-git

# Essential terminal related things
trizen -S --noconfirm --noedit zsh git antigen-git termite ranger base16-git

# i3-related desktop things
trizen -S --noconfirm --noedit i3-gaps-next-git rofi-git dmemu polybar-git compton compton-conf-git ttf-material-icons ttf-font-awesome-4

# File manger related 
trizen -S --noconfirm --noedit dropbox pantheon-files pantheon-files-plugin-dropbox-bzr 

# Fonts
trizen -S --noconfirm --noedit tf-fira-code-git ttf-hack otf-fira-sans otf-fira-mono otf-san-francisco ttf-ms-fonts ttf-google-fonts-git nerd-fonts-complete

# Text editor 
trizen -S --noconfirm --noedit vim vim-julia-git texlive-most
mv -r ~/julia-vim/* ~/.vim
sudo pacman -S xmodmap

# Communication things
trizen -S --noconfirm --noedit slack-desktop qutebrowser thunderbird gitkraken

# Other trivial things
trizen -S --noconfirm --noedit neofetch feh pacgraph

# Programming
sudo pacman -S julia
CONTREPO=https://repo.continuum.io/archive/
ANACONDAURL=$(wget -q -O - $CONTREPO index.html | grep "Anaconda2-" | grep "Linux" | grep "86_64" | head -n 1 | cut -d \" -f 2)
wget -O ~/anaconda.sh $CONTREPO$ANACONDAURL
bash ~/anaconda.sh
rm ~/anaconda.sh
cd

# Remove some unnessesary things from installing openbox
trizen -Rs antergos-openbox-meta yaourt

# Update
trizen -Syu
sudo pacman -Syy
sudo pacman -Suu

# Print number of packages
trizen -Qm
trizen -Qqm | wc -l
