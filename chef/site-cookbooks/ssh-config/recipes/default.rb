directory '/home/hdemon/.ssh' do
  owner 'hdemon'
  group 'hdemon'
  mode 0700
  action :create
end

template "authorized_keys" do
  path "/home/hdemon/.ssh/authorized_keys"
  source "authorized_keys.erb"
  owner "hdemon"
  group "hdemon"
  mode 0440
  # notifies :restart , 'service[ssh]'
end
