
Vagrant.configure("2") do |config|
  config.vm.box = 'trusty'
  config.vm.box_url = 'http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-i386-vagrant-disk1.box'
  config.vm.provision :shell, :path => "bootstrap.sh"
end
