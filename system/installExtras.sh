#!/usr/bin/env bash

GIT=`which git`




# tools for markdown: pandoc
sudo apt-get install -y pandoc

# .. including make pdfs, so grab
# entire xetex system, and the whole
# suite of GFS fonts:
sudo apt-get install -y texlive
sudo apt-get install -y texlive-xetex
sudo apt-get install -y texlive-latex-extra


sudo apt-get install -y fonts-gfs-artemisia
sudo apt-get install -y fonts-gfs-baskerville
sudo apt-get install -y fonts-gfs-bodoni-classic
sudo apt-get install -y fonts-gfs-complutum
sudo apt-get install -y fonts-gfs-didot
sudo apt-get install -y fonts-gfs-didot-classic
sudo apt-get install -y fonts-gfs-gazis
sudo apt-get install -y fonts-gfs-neohellenic
sudo apt-get install -y fonts-gfs-olga
sudo apt-get install -y fonts-gfs-porson
sudo apt-get install -y fonts-gfs-solomos
sudo apt-get install -y fonts-gfs-theokritos


# tools for markdown: beautifuldocs
sudo apt-get install -y nodejs
if [ -h "/usr/bin/node" ]; then
    echo "Already have symln for node"
else
    sudo ln -s /usr/bin/nodejs /usr/bin/node
fi

sudo apt-get install -y npm
sudo npm install beautiful-docs

# tools for markdown: mdpress
sudo apt-get install -y ruby2.0 ruby2.0-dev build-essential libssl-dev zlib1g-dev ruby-switch
sudo ruby-switch --set ruby2.0
sudo gem install mdpress

