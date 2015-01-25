#!/usr/bin/env bash

# Repository for 21st century version of gradle:                                
add-apt-repository ppa:cwchien/gradle
apt-get update

# Start from latest and greatest
apt-get update

# System and account conifg:
apt-get install -y dos2unix
apt-get install -y --no-install-recommends lubuntu-desktop

# Clean up any catastrophic reformatting that
# git clone could introduce on a Windows box:
/usr/bin/dos2unix /vagrant/system/*sh
/usr/bin/dos2unix /vagrant/system/dotprofile

/usr/bin/dos2unix /vagrant/scripts/*sh
/usr/bin/dos2unix /vagrant/scripts/*desktop
/usr/bin/dos2unix /vagrant/scripts/*groovy
/usr/bin/dos2unix /vagrant/scripts/*py


if [ ! -d "/home/vagrant/Desktop" ]; then
    mkdir "/home/vagrant/Desktop"
fi
cp /vagrant/system/dotprofile /home/vagrant/.profile
if [ ! -e "/home/vagrant/Desktop/shared" ]; then
    ln -s /vagrant /home/vagrant/Desktop/shared
#    cp /vagrant/system/initgui.desktop /home/vagrant/Desktop
#    cp /vagrant/scripts/cm.desktop /home/vagrant/Desktop
#    chmod +x /home/vagrant/Desktop/initgui.desktop
#    chown -R vagrant:vagrant /home/vagrant/Desktop
fi


# version control
apt-get install -y git
GIT=`which git`
echo Installed git at $GIT

# need to have the one true editor
# in case Neel Smith needs to work on
# the machine
apt-get install -y emacs

# and the other true editor
# in case Chris Blackwell needs to work on
# the machine
apt-get install -y vim

# for variety of utilities
#apt-get install -y sqlite


# JDK dev bundle
apt-get install -y openjdk-7-jdk
apt-get -y install groovy
apt-get -y install gradle

#apt-get installapt-get install -y texlive-xetex -y maven

# Need these for building morpheus:
apt-get install -y subversion
apt-get install -y flex-old




# clean up...
apt-get -y remove transmission
apt-get -y remove sylpheed
apt-get -y remove pidgin
apt-get -y remove byobu
apt-get -y remove mtpaint
apt-get -y remove abiword
apt-get -y remove audacious
apt-get -y remove gnumeric
apt-get -y remove guvcview
apt-get -y remove xfburn
apt-get -y remove gnome-mplayer

#  /etc/xdg/menus/lxde-applications.menu


# Fix perms
sudo chown vagrant:vagrant  Desktop/



# Update and trust apt to clean up some space for us:
#apt-get upgrade
apt-get -y autoremove
echo "Ran autoremove."

/bin/cp /vagrant/system/initgui.desktop /home/vagrant/Desktop
