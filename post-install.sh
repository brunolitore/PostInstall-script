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
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

    fi

    flatpak install flathub com.belmoussaoui.Authenticator \
      com.bitwarden.desktop \
      com.borgbase.Vorta \
      com.brave.Browser \
      com.discordapp.Discord \
      com.github.tchx84.Flatseal \
      com.mattjakeman.ExtensionManager \
      com.microsoft.Edge \
      com.nextcloud.desktopclient.nextcloud \
      com.notesnook.Notesnook \
      com.slack.Slack \
      com.spotify.Client \
      com.usebottles.bottles \
      com.valvesoftware.Steam \
      hu.kramo.Cartridges \
      io.appflowy.AppFlowy \
      io.bassi.Amberol \
      io.github.Foldex.AdwSteamGtk \
      io.github.celluloid_player.Celluloid \
      io.github.mimbrero.WhatsAppDesktop \
      io.github.seadve.Kooha \
      io.gitlab.adhami3310.Impression \
      io.gitlab.zehkira.Monophony \
      it.mijorus.gearlever \
      md.obsidian.Obsidian \
      net.lutris.Lutris \
      org.gnome.Boxes \
      org.gnome.Evince \
      org.gnome.FileRoller \
      org.gnome.Loupe \
      org.gnome.SoundRecorder \
      org.gnome.TextEditor \
      org.gnome.baobab \
      org.gnome.clocks \
      io.github.amit9838.weather \
      org.inkscape.Inkscape \
      org.kde.kdenlive \
      org.libretro.RetroArch \
      org.mozilla.Thunderbird \
      org.nickvision.money \
      org.olivevideoeditor.Olive \
      org.onlyoffice.desktopeditors \
      org.qbittorrent.qBittorrent \
      org.telegram.desktop \
      re.sonny.Tangram \
      us.zoom.Zoom -y

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
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

    fi
    
    flatpak install flathub com.belmoussaoui.Authenticator \
      com.bitwarden.desktop \
      com.borgbase.Vorta \
      com.brave.Browser \
      com.discordapp.Discord \
      com.github.tchx84.Flatseal \
      com.mattjakeman.ExtensionManager \
      com.microsoft.Edge \
      com.nextcloud.desktopclient.nextcloud \
      com.notesnook.Notesnook \
      com.slack.Slack \
      com.spotify.Client \
      com.usebottles.bottles \
      com.valvesoftware.Steam \
      hu.kramo.Cartridges \
      io.appflowy.AppFlowy \
      io.bassi.Amberol \
      io.github.Foldex.AdwSteamGtk \
      io.github.celluloid_player.Celluloid \
      io.github.mimbrero.WhatsAppDesktop \
      io.github.seadve.Kooha \
      io.gitlab.adhami3310.Impression \
      io.gitlab.zehkira.Monophony \
      it.mijorus.gearlever \
      md.obsidian.Obsidian \
      net.lutris.Lutris \
      org.gnome.Boxes \
      org.gnome.Evince \
      org.gnome.FileRoller \
      org.gnome.Loupe \
      org.gnome.SoundRecorder \
      org.gnome.TextEditor \
      org.gnome.baobab \
      org.gnome.clocks \
      io.github.amit9838.weather \
      org.inkscape.Inkscape \
      org.kde.kdenlive \
      org.libretro.RetroArch \
      org.mozilla.Thunderbird \
      org.nickvision.money \
      org.olivevideoeditor.Olive \
      org.onlyoffice.desktopeditors \
      org.qbittorrent.qBittorrent \
      org.telegram.desktop \
      re.sonny.Tangram \
      us.zoom.Zoom -y

else
    echo "Invalid package manager specified."
fi

