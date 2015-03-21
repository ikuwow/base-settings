#
# Cookbook Name:: base-settings
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "base-settings::user"

include_recipe "selinux::disabled"
