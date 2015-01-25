#!/usr/bin/env bash


echo "Setting up account directory."
/bin/cp "/vagrant/dotprofile" "/home/vagrant/.profile"

# Configure menus:
/bin/cp /vagrant/system/applications/*desktop /usr/share/applications 

/bin/mkdir /home/vagrant/.local/share/applications
/bin/mkdir /home/vagrant/.local/share/desktop-directories
/bin/mkdir /home/vagrant/.config/menus

/bin/cp /vagrant/system/user/applications/*desktop /home/vagrant/.local/share/applications 
/bin/cp /vagrant/system/user/dt-directories/*directory  /home/vagrant/.local/share/desktop-directories
cp /vagrant/system/user/menus/* /home/vagrant/.config/menus/lxde-applications.menu 
