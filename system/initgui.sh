#!/usr/bin/env bash


echo "Setting up account directory."
/bin/cp "/vagrant/dotprofile" "/home/vagrant/.profile"

# Configure menus:
/bin/cp /vagrant/system/applications/*desktop /usr/share/applications 

/bin/mdkir /home/vagrant/.local/share/applications
/bin/mdkir /home/vagrant/.local/share/desktop-directories

/bin/cp /vagrant/system/user/applications/*desktop /home/vagrant/.local/share/applications 
/bin/cp /vagrant/system/user/dt-directories/*desktop  /home/vagrant/.local/share/desktop-directories
cp /vagrant/system/user/menus/* /home/vagrant/.config/menus/lxde-applications.menu 
