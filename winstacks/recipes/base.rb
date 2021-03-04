include_recipe 'chef-client'
include_recipe 'chef-client::delete_validation'

if node['kitchen'] == 'true'
  Chef::Log.warn('Audit mode and client upgrade does not run in kitchen')
else
  include_recipe 'audit'
  include_recipe 'chef_client_updater::default'
end

windows_task 'Chef-Client-Bootstrap' do
  action :delete
end
