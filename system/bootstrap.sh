#!/usr/bin/env bash

# Start from latest and greatest
apt-get update

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

# for hosting on Windows
apt-get install -y dos2unix

# for variety of utilities
apt-get install -y sqlite


# Get full JDK *now* so we don't pull in
# jre as a dependency and have to
# add jdk later...
apt-get install -y openjdk-7-jdk

# build system and dependency mgt
apt-get install -y gradle
apt-get installapt-get install -y texlive-xetex -y maven

# for building morpheus:
apt-get install -y subversion
apt-get install -y flex-old

# Update and trust apt to clean up some space for us:
apt-get upgrade
apt-get -y autoremove

echo "Ran autoremove."

# ADD THIS....
echo "Setting up account directory."
/bin/cp "/vagrant/dotprofile" "/home/vagrant/.profile"


