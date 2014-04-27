
Vagrant.configure("2") do |config|
  config.vm.box = 'saucy'
  config.vm.box_url = 'http://cloud-images.ubuntu.com/vagrant/saucy/current/saucy-server-cloudimg-i386-vagrant-disk1.box'
  config.vm.provision :shell, :path => "bootstrap.sh"
end
