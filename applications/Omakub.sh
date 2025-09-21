#!/bin/bash

cat <<EOF >~/.local/share/applications/Omakub.desktop
[Desktop Entry]
Version=1.0
Name=OmakubPy
Comment=OmakubPy Controls
Exec=alacritty --config-file /home/$USER/.config/alacritty/pane.toml --class=OmakubPy --title=OmakubPy -e omakub
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/omakub/applications/icons/Omakub.png
Categories=GTK;
StartupNotify=false
EOF
