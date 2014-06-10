Using the HMT virtual machine
=============================

The HMT project virtual machine is a Vagrant project: it requires both
Vagrant and VirtualBox to run.

The shared VM directory in your host computer appears at `/vagrant` in
your virtual machine: you can edit files in it either within the VM or
from your host machine.

Basic starting/working/stopping
-------------------------------

-   Start the VM: `vagrant up`
-   Connect to the VM via secure shell: `vagrant ssh`
-   End the secure shell session (from within the VM): `exit`
-   Stop the VM: `vagrant halt`

Setting up HMT material
-----------------------

Since the shared directory is `/vagrant` in the VM, `cd /vagrant`

Update all standard repositories: `sh refresh.sh`

You will need to clone your project's archive (once):
`git clone YOUR-REPOSITORY`

Verifying work in your repository
---------------------------------

From within your project repository:

-   edit `vm-mom-config.gradle` with the URN for the folio you want to
    verify
-   run `sh verify.sh`

The results of the verification will be inside the `hmt-mom/build`
directory (so on your host machine, in `hmt-mom/build` wherever you
checked out the HMT VM repository; within the VM, this will be
`/vagrant/hmt-mom/build`).

-   inspect the visual inventory: open
    `hmt-mom/build/visualinventory/inventory.xml` (in Safari or Firefox
    (unless you have specifically altered Chrome's security settings, it
    will not open the javascript file that makes this inventory work)
-   if you are fully satisfied with the results, post an issue to your
    project tracker with the following information:
    -   in the issue title, note "page verified"
    -   in the body of the issue, note the URN for the page, and the
        version of HMT MOM (displayed on the screen when you verify)

