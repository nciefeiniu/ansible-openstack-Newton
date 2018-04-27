# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|  
  config.vm.define "deploy" do |deploy|
      deploy.vm.box = "ubuntu/trusty64"

      deploy.vm.network "private_network", ip: "192.168.221.100"
      deploy.vm.provision "shell" , inline: <<-SHELL
        cat > /etc/apt/sources.list <<EOF
	deb http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse
	deb http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse
	deb http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse
	deb http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse
	deb http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse
	deb-src http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse
	deb-src http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse
	deb-src http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse
	deb-src http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse
	deb-src http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse
EOF
	cat >> /etc/ssh/ssh_config <<EOF   
        StrictHostKeyChecking no
        UserKnownHostsFile=/dev/null
EOF
	apt-get update
	apt-get install -y ansible
    SHELL


    deploy.vm.provider "virtualbox" do |vbox|
      vbox.memory = 1024
    end
  end

  config.vm.define :controller do |controller|
    controller.vm.box = "ubuntu-16.04"
    controller.vm.hostname = "controller"
    controller.vm.network :private_network, ip: "192.168.221.101" # eth1 internal
    controller.vm.network :public_network, bridge: "eth1" ,ip: "192.168.1.241" # eth2 external
    controller.vm.provider "virtualbox" do |vbox|
      vbox.customize ["modifyvm", :id, "--memory", "4098"]
      vbox.customize ["modifyvm", :id, "--nicpromisc3", "allow-all"] # eth2
    end

    controller.vm.provision "shell" , inline: <<-SHELL
      cat > /etc/apt/sources.list <<EOF
deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse
EOF
    SHELL
  end

  config.vm.define :compute do |compute|
    compute.vm.box = "ubuntu-16.04"
    compute.vm.hostname = "compute"
    compute.vm.network :private_network, ip: "192.168.221.102" # eth1 internal
    compute.vm.network :public_network, bridge: "eth1" ,ip: "192.168.1.242" # eth2 external
    compute.vm.provider "virtualbox" do |vbox|
      vbox.customize ["modifyvm", :id, "--memory", "2048"]
      vbox.customize ["modifyvm", :id, "--nicpromisc3", "allow-all"] # eth2
    end

    compute.vm.provision "shell" , inline: <<-SHELL
      cat > /etc/apt/sources.list <<EOF
deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse
EOF
    SHELL
  end

  config.ssh.insert_key = false
end
