#
# Cookbook:: mytomcat8ubuntu16
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

include_recipe 'mytomcat8ubuntu16::myjava'
include_recipe 'mytomcat8ubuntu16::mytomcatusergroup'
include_recipe 'mytomcat8ubuntu16::installtomcat'   #install / download
include_recipe 'mytomcat8ubuntu16::extract'
include_recipe 'mytomcat8ubuntu16::permissions'
include_recipe 'mytomcat8ubuntu16::tomcatservice'
include_recipe 'mytomcat8ubuntu16::starttomcat'
include_recipe 'mytomcat8ubuntu16::tomcatmanager'
include_recipe 'mytomcat8ubuntu16::starttomcat'
include_recipe 'mytomcat8ubuntu16::deploy'