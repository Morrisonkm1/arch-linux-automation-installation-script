#!/bin/bash

# Set font
setfont ter-132n

# Ping Google
ping -4 -c 4 google.com

# Simulate Ctrl+C
kill -SIGINT $!

# Function to list available networks
list_networks() {
    echo "Available Wi-Fi networks:"
    iwctl station wlan0 get-networks | grep -E '^\s+\d+\s+' | cut -d ' ' -f 4-
}

# Prompt user to select a Wi-Fi network
select_network() {
    list_networks
    read -p "Enter the number of the network you want to connect to: " network_number
    iwctl station wlan0 connect $(list_networks | sed -n "${network_number}p")
}

# Prompt user for network password
enter_password() {
    read -s -p "Enter the network password: " network_password
    echo  # Move to a new line after password input
    echo "$network_password"  # Print password to input into iwctl
}

# Select and connect to Wi-Fi network
select_network

# Enter password for the selected network
enter_password

# Ping Google again
ping -4 -c 4 google.com

# Simulate Ctrl+C
kill -SIGINT $!

# Update and install packages
pacman -Sy --noconfirm
pacman -Sy --noconfirm archlinux-keyring
pacman -Sy --noconfirm archinstall

# Run archinstall (interactive mode, typically requires user input)
archinstall

# List disk partitions
fdisk -l
