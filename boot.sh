#!/bin/bash

set -e

ascii_art='________                  __        ___.
\_____  \   _____ _____  |  | ____ _\_ |__
 /   |   \ /     \\__   \ |  |/ /  |  \ __ \
/    |    \  Y Y  \/ __ \|    <|  |  / \_\ \
\_______  /__|_|  (____  /__|_ \____/|___  /
        \/      \/     \/     \/         \/
'

echo -e "$ascii_art"
echo "=> OmakubPy is for fresh Ubuntu 24.04+ installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning OmakubPy..."
rm -rf ~/.local/share/omakub-py
git clone https://github.com/bayuik/omakub-py.git ~/.local/share/omakub-py >/dev/null
if [[ $OMAKUBPY_REF != "master" ]]; then
	cd ~/.local/share/omakub-py
	git fetch origin "${OMAKUBPY_REF:-stable}" && git checkout "${OMAKUBPY_REF:-stable}"
	cd -
fi

echo "Installation starting..."
source ~/.local/share/omakub-py/install.sh
