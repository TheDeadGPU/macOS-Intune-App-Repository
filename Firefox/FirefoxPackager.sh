#!/bin/bash
#Author: TheDeadGPU

#Check to see if the macOS Intune Packager is Installed
if test -e "/Applications/IntuneAppUtil"; then
    curl -LOk "https://download-installer.cdn.mozilla.net/pub/firefox/releases/87.0/mac/en-US/Firefox%2087.0.dmg"
    mv "Firefox%2087.0.dmg" "Firefox 87.0.dmg"
    hdiutil attach "Firefox 87.0.dmg"
    sudo pkgbuild --install-location /Applications --component /Volumes/Firefox/Firefox.app ./Firefox.pkg
    hdiutil detach "/Volumes/Firefox"
    /Applications/IntuneAppUtil -c Firefox.pkg -o .
    rm -rf "Firefox 87.0.dmg"
    rm -rf "Firefox.pkg"
else
    echo "Intune Packager not installed. Please install the Intune Packager and then run the script again."
fi