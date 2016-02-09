# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "myprecise.box"
  config.vm.network :private_network, ip: "192.168.0.42"
  config.vm.network "forwarded_port", guest: 80, host: 8888
  #config.vm.synced_folder "src/", "/var"
  
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
     sudo apt-get install -y apache2 php5 git
     sudo rm -R /var/www
     sudo git clone https://github.com/ABCD-STUDY/ABCDreport.git /var/www
     sudo cp /var/www/code/php/passwords.json_master /var/www/code/php/passwords.json
     sudo chmod 777 /var/www/code/php
     sudo chmod 777 /var/www/code/php/passwords.json
     sudo git clone https://github.com/ABCD-STUDY/timeline-followback.git /var/www/applications/timeline-followback
     sudo git clone https://github.com/ABCD-STUDY/little-man-task.git /var/www/applications/little-man-task
  SHELL
end
