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

    vagrant up
 

## Regular usage

ssh to the virtual machine 

    vagrant ssh

Then update all HMT repositories in the virtual machine:

    sh /vagrant/refresh-hmt.sh



    

