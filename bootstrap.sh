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


# Get full JDK *now* so we don't pull in
# jre as a dependency and have to
# add jdk later...
apt-get install -y openjdk-7-jdk

# build system and dependency mgt
apt-get install -y gradle
apt-get installapt-get install -y texlive-xetex -y maven


# tools for markdown: pandoc
apt-get install -y pandoc

# .. including make pdfs, so grab
# entire xetex system, and the whole
# suite of GFS fonts:
apt-get install -y texlive
apt-get install -y texlive-xetex
apt-get install -y texlive-latex-extra


apt-get install -y fonts-gfs-artemisia
apt-get install -y fonts-gfs-baskerville
apt-get install -y fonts-gfs-bodoni-classic
apt-get install -y fonts-gfs-complutum
apt-get install -y fonts-gfs-didot
apt-get install -y fonts-gfs-didot-classic
apt-get install -y fonts-gfs-gazis
apt-get install -y fonts-gfs-neohellenic
apt-get install -y fonts-gfs-olga
apt-get install -y fonts-gfs-porson
apt-get install -y fonts-gfs-solomos
apt-get install -y fonts-gfs-theokritos


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


