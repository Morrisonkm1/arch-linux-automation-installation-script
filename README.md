# arch-linux-automation-installation-script
# I am attempting to write a script that automates the Arch installation process. The intention is to eliminate the need for manual installation.
# To install pacakges use:
cat "installationpackages.txt" | xargs sudo pacman -S --noconfirm
