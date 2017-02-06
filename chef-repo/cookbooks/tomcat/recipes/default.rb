#
# Cookbook:: tomcat
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recioe 'tomcat'

tomcat_install 'helloworld' do
  version '7'
install_path '/var/lib/tomcat7/'
end

tomcat_service 'helloworld' do
  action :start
  env_vars [{ 'CATALINA_PID' => '/my/special/path/tomcat.pid' }]
end
