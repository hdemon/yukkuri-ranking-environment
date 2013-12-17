yukkuri = data_bag_item('users', 'yukkuri')

directory '/home/yukkuri/.ssh' do
  owner 'yukkuri'
  group 'yukkuri'
  mode 0700
  action :create
end

template '/etc/ssh/sshd_config' do
  source 'sshd_config.erb'
  owner 'root'
  group 'root'
  mode 0666
end

file '/home/yukkuri/.ssh/authorized_keys' do
  owner 'yukkuri'
  group 'yukkuri'
  mode 0440
  content yukkuri['public_key']
  action :create
end

service 'ssh' do
  action :restart
end
