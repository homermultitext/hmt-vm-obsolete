#!/usr/bin/env /bin/bash


GIT=`which git`
echo git installed at $GIT


## Need to build morpheus
## Need to check out and update git repos.

#if [ -d "/vagrant/citedownmgr" ]; then
#    echo "Checking for updates to citedown manager"
#    cd /vagrant/citedownmgr
#    $GIT pull
#else
#    echo "Installing citedown manager"
#    cd /vagrant
#    echo  Running  $GIT clone https://github.com/cite-architecture/citedownmgr.git
#    $GIT clone https://github.com/cite-architecture/citedownmgr.git
#fi


if [ -d "/vagrant/hmt-mom" ]; then
    echo "Checking for updates to HMT-MOM (verification system)"
    cd /vagrant/hmt-mom
    $GIT pull
else
    echo "Installing HMT-MOM"
    cd /vagrant
    echo  Running  $GIT clone https://github.com/homermultitext/hmt-mom.git
    $GIT clone https://github.com/homermultitext/hmt-mom.git
fi



if [ -d "/vagrant/hmt-authlists" ]; then
    echo "Checking for updates to HMT authority lists"
    cd /vagrant/hmt-authlists
    $GIT pull
else
    echo "Installing HMT authority lists"
    cd /vagrant
    echo  Running  $GIT clone https://github.com/homermultitext/hmt-authlists.git
    $GIT clone https://github.com/homermultitext/hmt-authlists.git
fi



if [ -d "/vagrant/byzortho" ]; then
    echo "Checking for updates to orthographic equivalents"
    cd /vagrant/byzortho
    $GIT pull
else
    echo "Installing orthographic equivalents repository"
    cd /vagrant
    echo  Running  $GIT clone https://github.com/homermultitext/byzortho.git
    $GIT clone https://github.com/homermultitext/byzortho.git
fi



if [ -d "/vagrant/morpheus" ]; then
    echo "Checking for updates to morphological stems"
    cd /vagrant/morpheus
    $GIT pull
else
    echo "Installing morphological system"
    cd /vagrant

    echo  Running   $GIT clone https://github.com/homermultitext/morpheus.git
    $GIT clone https://github.com/homermultitext/morpheus.git
    cd /vagrant/morpheus
    sh build_linux.sh

    cd /vagrant/morpheus/src/morphlib/
    make morphlib.a

    cd /vagrant/morpheus
    sh build_linux.sh

fi


