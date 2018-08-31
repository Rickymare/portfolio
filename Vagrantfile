Vagrant.configure(2) do |config|

  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = false
  end


  config.vm.define "web1" do |web1|

    data.vm.box = "ubuntu/trusty64"
    data.vm.network :private_network, ip: "192.168.56.20" 
    data.vm.provision :shell, path: "web1/web1.sh"
    data.vm.synced_folder "web1/", "/web1"
 
    data.vm.provider :virtualbox do |v|
      v.name = "web1"
    end

  end


  config.vm.define "web2" do |web2|

    web.vm.box = "ubuntu/trusty64"
    web.vm.network :private_network, ip: "192.168.56.10" 
    web.vm.provision :shell, path: "web2/web2.sh"
    web.vm.synced_folder "web2/", "/web2"

    web.vm.provider :virtualbox do |v|
      v.name = "web2"
    end

  end

  config.vm.define "haproxy" do |haproxy|
 
    web.vm.box = "ubuntu/trusty64"
    web.vm.network :private_network, ip: "192.168.56.10"
    web.vm.provision :shell, path: "haproxy/haproxy.sh"
    web.vm.synced_folder "haproxy/", "/haproxy"
  
    web.vm.provider :virtualbox do |v|
      v.name = "haproxy"
    end
  
   end

  config.vm.define "nagios" do |nagios|
 
    web.vm.box = "ubuntu/trusty64"
    web.vm.network :private_network, ip: "192.168.56.10"
    web.vm.provision :shell, path: "nagios/nagios.sh"
    web.vm.synced_folder "nagios/", "/nagios"
  
    web.vm.provider :virtualbox do |v|
      v.name = "nagios"
    end
  
   end

end
