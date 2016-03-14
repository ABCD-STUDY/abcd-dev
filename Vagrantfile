# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "myprecise.box"
  config.vm.network :private_network, ip: "192.168.1.42"
  config.vm.network "forwarded_port", guest: 80, host: 8888
  config.vm.synced_folder "src/", "/var/www/html", owner: "www-data", group: "www-data"
  
  config.vm.provider :virtualbox do |vb|
    vb.customize [
      "modifyvm", :id,
      "--cpuexecutioncap", "50",
      "--memory", "256",
    ]
  end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL
     sudo apt-get update
     sudo apt-get install -y language-pack-en-base software-properties-common
     sudo LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php
     sudo apt-get update
     sudo apt-get install -y apache2 git
     sudo apt-get install -y php7.0 php7.0-fpm php7.0-curl php7.0-gd php7.0-json php7.0-mcrypt php7.0-opcache php7.0-xml libapache2-mod-php7.0
     sudo apt-get --purge autoremove -y
     sudo service apache2 restart
     #sudo rm /var/www/html/index.html
  SHELL
end
