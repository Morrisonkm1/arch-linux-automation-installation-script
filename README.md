# arch-linux-automation-installation-script #
# I am developing a script to automate the Arch installation process. My goal is to eliminate the need for manual installation. The script will install the packages that I employ, including KDE Plasma.#
# To install pacman packages use: #
cat "pacmanpackages.txt" | xargs sudo pacman -S --noconfirm
# TO install yay packages use: #
cat "yaypackages.txt" | xargs  yay -S --noconfirm
