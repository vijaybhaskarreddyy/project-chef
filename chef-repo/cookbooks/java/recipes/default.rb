#
# Cookbook:: java
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe  'tomcat'

tomcat_install 'helloworld' do
  version '8.0.36'
  install_path '/var/lib/tomcat_helloworld_8_0_36/'
end

tomcat_service 'helloworld' do
  action :start
  env_vars [{ 'CATALINA_PID' => '/my/special/path/tomcat.pid' }]
end
