#!bin/bash
#Used sources
#https://www.linuxtechi.com/things-after-installing-elementary-os/

echo "script Started"

#Update and upgrade apps and system 
sudo apt-get -y update && sudo apt-get -y updgrade && sudo apt-get -y dist-upgrade
echo "Updated and upgraded apps and system"

#install Git
sudo apt install -y git
echo "installed Git"

#Install Required Drivers
sudo ubuntu-drivers autoinstall
echo "Auto Installed Required Drivers"

#Extend Your Laptop Battery Life
sudo add-apt-repository ppa:linrunner/tlp && sudo apt-get update && sudo apt-get install tlp tlp-rdw && sudo tlp start && sudo apt install -y thermald
echo "Installed Energy and Battery management"

#Install Pantheon Tweaks
sudo apt install -y software-properties-common && sudo add-apt-repository ppa:philip.scott/pantheon-tweaks && sudo apt update && sudo apt install -y pantheon-tweaks
echo "Installed Pantheon Tweaks in to system settings pannel"
 
#Install Synaptic Package Manager
sudo apt install synaptic -y
echo "Installed Synaptic Package Manager"

#Install GDebi
sudo apt install -y gdebi
echo "Installed GDebi deb package installer"

#Install Multimedia Codecs
sudo apt install -y ubuntu-restricted-extras libavcodec-extra libdvd-pkg
echo "Installed Multimedia Codecs"

#Install Timeshift Backup Software
sudo apt install -y timeshift
echo "Installed Timeshift Backup Software"

#Install a Disk Utility
sudo apt get install -y gnome-disk-utility
echo "Install GNOME Disk Utility"

#enable tray icons for apps
sudo apt install -y gobject-introspection libglib2.0-dev libgranite-dev libindicator3-dev libwingpanel-2.0-dev valac && git clone https://github.com/donadigo/wingpanel-indicator-namarupa && cd wingpanel-indicator-namarupa  && meson build --prefix=/usr && cd build  && ninja && sudo ninja install && apt install -f && wget https://github.com/mdh34/elementary-indicators/releases/download/0.1/indicator-application-patched.deb && sudo dpkg -i indicator-application-patched.deb && sudo apt-mark hold indicator-application 
echo "enabled tray icons for apps"

#install plane dock
sudo add-apt-repository ppa:ricotz/docky && apt update && apt install --reinstall plank && killall plank && plank --preferences
echo "installed plane dock"

#Install Brave Browser
sudo apt install apt-transport-https curl && sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list && sudo apt update && sudo apt install -y brave-browser

#Install Chrome Browser
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo apt install -y ./google-chrome-stable_current_amd64.deb








#uninstall Standart apps
echo "uninstall Standart apps"

sudo apt-get -y purge midori-granite 
echo "Standart Browser Removed"

sudo apt-get -y purge noise  # Music player
echo "Standart AudioPlayer Removed"

sudo apt-get -y purge scratch-text-editor
echo "Standart Text editor Removed"

sudo apt-get -y purge software-center
echo "Standart Software Center Removed"

sudo apt-get -y purge empathy # chat client
echo "Standart Chat Client Removed"

sudo apt-get -y purge geary # E-mail client
echo "Standart Email Client Removed"





#System Clean up and reboot
echo "Clean up and reboot starting"
sudo apt-get autoremove -y && sudo apt clean -y && sudo apt autoclean -y && sudo reboot