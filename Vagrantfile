Vagrant::Config.run do |config|
    config.vm.define :webwork do |ww_config|
        ww_config.vm.box = "precise32"
        ww_config.vm.host_name = "wwdevbox"
        ww_config.vm.box_url = "http://files.vagrantup.com/precise32.box"
        ww_config.vm.provision :shell, :path => "vagrant/bootstrap.sh"
        #ww_config.vm.customize ["modifyvm", :id, "--rtcuseutc", "on"]
        ww_config.ssh.max_tries = 10
        ww_config.vm.forward_port 80, 8888
        ww_config.vm.forward_port 3306, 8889
        ww_config.vm.forward_port 5432, 5433
        ww_config.vm.host_name = "WeBWorK"
        ww_config.vm.share_folder("webwork2", "/opt/webwork/webwork2", "./webwork2",  :extra => 'dmode=777,fmode=777')
        ww_config.vm.share_folder("pg", "/opt/webwork/pg", "./pg",  :extra => 'dmode=777,fmode=777')
        #ww_config.vm.provision :shell, :inline => "echo \"America/Denver\" | sudo tee /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata"
    end
end
