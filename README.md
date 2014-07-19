# hmt-vm

A virtual machine for editorial work on Homer Multitext project.

## Prerequisites ##

- vagrant: <http://www.vagrantup.com>
- virtualbox: <https://www.virtualbox.org/>


You can easily verify that you have installed the prerequisites correctly
by trying out this simple example of a virtual machine
(from [the Vagrant home page][vaghome]):

    vagrant init hashicorp/precise32
    vagrant up


[vaghome]: http://www.vagrantup.com/


## Initial build of HMT VM ##

From a terminal in the directory where you have checked
out this repository:

    vagrant up
 

## Regular usage

Connect to the virtual machine with ssh:

    vagrant ssh
    

Work in the directory shared with your host machine:

    cd /vagrant

Update all HMT repositories in the virtual machine:

    sh /vagrant/refresh-hmt.sh



    

