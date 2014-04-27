#!/usr/bin/env bash


GIT=`which git`
echo Installed git at $GIT


## Need to build morpheus
## Need to check out and update git repos.

if [ -d "/vagrant/hmt-mom" ]; then
    echo "Checking HMT-MOM for updates"
    # Control will enter here if $DIRECTORY exists.
    cd /vagrant/hmt-mom
    $GIT pull
else
    echo "Installing HMT-MOM"
    cd /vagrant
    echo  Running  $GIT clone https://github.com/homermultitext/hmt-mom.git
    $GIT clone https://github.com/homermultitext/hmt-mom.git
fi

if [ -d "/vagrant/morpheus" ]; then
    echo "Checking for updates to morphological stems"
    cd /vagrant/morpheus
    $GIT pull
else
    echo "Installing morphological stems"
    cd /vagrant
    echo  Running   $GIT clone https://github.com/homermultitext/morpheus.git
    $GIT clone https://github.com/homermultitext/morpheus.git
fi


# ADD THIS....
#echo "Setting up account directory."
#cp "/vagrant/dotprofile" "/home/vagrant/.profile"


