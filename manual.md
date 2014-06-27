# Using the HMT virtual machine #

The HMT project virtual machine is a Vagrant project: it requires both
Vagrant and VirtualBox to run.

The shared VM directory in your host computer appears at `/vagrant` in
your virtual machine: you can edit files in it either within the VM or
from your host machine.

## Basic starting/working/stopping ##




-   Start the VM: `vagrant up`
-   Connect to the VM via secure shell: `vagrant ssh`
-   End the secure shell session (from within the VM): `exit`
-   Stop the VM: `vagrant halt`

## Setting up HMT material ##


Since the shared directory is `/vagrant` in the VM, `cd /vagrant`

Update all standard repositories: `sh refresh-hmt.sh`

You will need to clone your project's archive (once):

`git clone YOUR-REPOSITORY`


