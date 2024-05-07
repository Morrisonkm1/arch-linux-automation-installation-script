# arch-linux-automation-installation-script #
# I am attempting to write a script that automates the Arch installation process. The intention is to eliminate the need for manual installation. #
# To install pacman packages use: #
cat "pacmanpackages.txt" | xargs sudo pacman -S --noconfirm
# TO install yay packages use: #
cat "yaypackages.txt" | xargs  yay -S --noconfirm
