#!/bin/bash

set -euo pipefail

readonly DEST=~/chrome
readonly VERSION_FILE="$DEST/.version"

check_local_version() {
	if [[ -f $VERSION_FILE ]]
	then
		cat $VERSION_FILE
	else
		echo none
	fi
}

check_remote_version() {
	local packages_url="https://dl.google.com/linux/chrome/deb/dists/stable/main/binary-amd64/Packages.gz"
	curl -s "$packages_url" |
		gunzip |
		sed -n "/Package: google-chrome-stable/ {n;p}" |
		cut -d \  -f 2

}

install_chrome() {
	local version="$1"
	local download_url="https://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_${version}_amd64.deb"
	local tmp_dir=$(mktemp -d)
	cd $tmp_dir

	local deb="google-chrome-stable_amd64.deb"
	local tar="data.tar.xz"

	echo "Downloading"
	echo "$download_url"
	curl "$download_url" -o "$deb"

	echo "Extracting"
	ar x "$deb" "$tar"

	rm -rf "$DEST"
	mkdir -p "$DEST"
	bsdtar -xf "$tar" -C "$DEST" 

	cd
}

main() {
	echo "Google Chrome Installer"

	local local_version=$(check_local_version)
	echo -e "Local version\t: $local_version"

	local remote_version=$(check_remote_version)
	echo -e "Remote version\t: $remote_version"

	if [ "$local_version" == "$remote_version" ]
	then
		echo "No update available"
		exit
	fi

	read -sp "Enter to update, Ctrl-C to abort..." && echo

	install_chrome $remote_version

	sed -e "s%/usr/bin/google-chrome-stable%${DEST}/opt/google/chrome/google-chrome%" \
		${DEST}/usr/share/applications/google-chrome.desktop \
		> ~/.local/share/applications/google-chrome.desktop

	echo "$remote_version" > "$VERSION_FILE"

	echo "Done"
	echo "${DEST}/opt/google/chrome/google-chrome"
}
main "$@"

