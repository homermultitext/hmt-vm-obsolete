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

# for hosting on Windows
apt-get install -y dos2unix


# Get full JDK *now* so we don't pull in
# jre as a dependency and have to
# add jdk later...
apt-get install -y openjdk-7-jdk

# build system and dependency mgt
apt-get install -y gradle
apt-get install -y maven


# tools for markdown: pandoc
apt-get install -y pandoc

# tools for markdown: beautifuldocs
apt-get install -y nodejs
if [ -h "/usr/bin/node" ]; then
    echo "Already have symln for node"
else
    sudo ln -s /usr/bin/nodejs /usr/bin/node
fi

apt-get install -y npm
npm install beautiful-docs

# tools for markdown: mdpress
apt-get install -y ruby2.0 ruby2.0-dev build-essential libssl-dev zlib1g-dev ruby-switch
ruby-switch --set ruby2.0
gem install mdpress

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


