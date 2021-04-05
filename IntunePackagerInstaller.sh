#!/bin/bash
#Author: TheDeadGPU

if test -e "/Applications/IntuneAppUtil"; then
    echo "IntuneAppUtil is already installed."
else
    echo "Installing Intune Application Utility for macOS..."
    #Grab the IntuneAppUtil Application from Microsoft's GitHub Repo
    curl -LOk "https://github.com/msintuneappsdk/intune-app-wrapping-tool-mac/raw/master/IntuneAppUtil"
    sudo chmod +x IntuneAppUtil
    #Copy the IntuneAppUtil Application to the Applications folder
    cp -R IntuneAppUtil "/Applications/IntuneAppUtil"
    #Fix up our permissions
    sudo chown -R root:wheel "/Applications/IntuneAppUtil"
    #Remove the Downloaded file
    rm -rf "IntuneAppUtil"
    echo "Intune Application Utility Install Completed."
fi
