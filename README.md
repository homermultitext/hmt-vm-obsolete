# hmt-vm

A virtual machine for editorial work on Homer Multitext project.

## Prerequisites ##

- vagrant: <http://www.vagrantup.com>
- virtualbox: <https://www.virtualbox.org/>

## Initial build ##

    vagrant up
    vagrant plugin install vagrant-vbguest

## Regular usage

ssh to the virtual machine 

    vagrant ssh

Then update all HMT repositories in the virtual machine:

    sh /vagrant/refresh-hmt.sh



    

