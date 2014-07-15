# Download Zephyr plugin from Atlassin direct URL
remote_file "/tmp/je-2.2.1.22101482.obr" do
   source "#{node[:zephyr][:url]}"
   mode '0644'
end

# Extract plugin
execute "unzip /tmp/je-2.2.1.22101482.obr -d /tmp" do
   not_if { ::File.exist?("/tmp/je-2.2.1.jar") }
end

# Move plugin to target directory
remote_file "je-2.2.1.jar" do 
  path "#{node[:jira][:dir]}/#{node[:jira][:plugins_dir]}/je-2.2.1.jar" 
  source "file:///tmp/je-2.2.1.jar"
  owner 'jira'
  group 'jira'
  mode 0755
end

# Move plugin dependencies to target directory
remote_file "plugin-license-storage-plugin-2.2.4.jar" do
  path "#{node[:jira][:dir]}/#{node[:jira][:plugins_dir]}/plugin-license-storage-plugin-2.2.4.jar"
  source "file:///tmp/dependencies/plugin-license-storage-plugin-2.2.4.jar"
  owner 'jira'
  group 'jira'
  mode 0755
end
