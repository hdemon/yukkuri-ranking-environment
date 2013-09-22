BOX_FILE = 'ubuntu-12.04.3-server-amd64.box'

task :build_box do
  %x{packer build dev_vm_image.json}
end

file "#{BOX_FILE}" => [:build_box]

namespace :vagrant do
  task :add_box do
    system("vagrant box add base ./ubuntu-12.04.3-server-amd64.box")
  end

  task :remove_box do
    system("vagrant box remove base virtualbox")
  end

  task :up => ["#{BOX_FILE}", :remove_box, :add_box] do
    system("vagrant up")
  end

  task :destroy do
    system("vagrant destroy")
  end
end

task :provision do
  # system("knife solo cook vagrant@127.0.0.1")
  system("knife solo cook vagrant-vm")
end
