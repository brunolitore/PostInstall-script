#!/bin/bash

# Ask user for the package manager being used
read -p "Which package manager are you using? (apt or dnf): " packageManager

if [ "$packageManager" = "apt" ]; then
    if ! command -v flatpak &> /dev/null; then
        echo "Flatpak is not installed. Installing Flatpak..."

        # Install Flatpak
        sudo apt update
        sudo apt install flatpak -y

        # Add the Flathub remote repository
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

        echo "Flatpak installed successfully."
    else
        echo "Flatpak is already installed."
    fi
elif [ "$packageManager" = "dnf" ]; then
    if ! command -v flatpak &> /dev/null; then
        echo "Flatpak is not installed. Installing Flatpak..."

        # Install Flatpak
        sudo dnf install flatpak -y

        # Add the Flathub remote repository
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

        echo "Flatpak installed successfully."
    else
        echo "Flatpak is already installed."
    fi
else
    echo "Invalid package manager specified."
fi

