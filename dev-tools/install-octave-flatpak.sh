#!/bin/bash
#
# This installs Octave 4.4 on Ubuntu using Flatpak.
#
# This should work on Trusty, Xenial, and Bionic.

echo $0: installing flatpak
if grep -i 'xenial\|trusty' /etc/lsb-release &>/dev/null; then
	echo $0: Adding apt repository ppa:alexlarsson/flatpak to get flatpak Octave 4.4.
	sudo add-apt-repository ppa:alexlarsson/flatpak --yes
	sudo apt-get update
fi
sudo apt-get install --yes flatpak

flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --user -y flathub org.octave.Octave
# Hack to get this flatpak octave and mkoctfile on the path
octave_dir=$(flatpak info org.octave.Octave | grep Location | cut -d ":" -f 2 | cut -d " " -f 2)
