#!/bin/sh

# Install/compile Gnome Keyring devel
sudo apt-get install -y libgnome-keyring-dev
sudo make --directory=/usr/share/doc/git/contrib/credential/gnome-keyring

# Setup credential
git config --global credential.helper /usr/share/doc/git/contrib/credential/gnome-keyring/git-credential-gnome-keyring

