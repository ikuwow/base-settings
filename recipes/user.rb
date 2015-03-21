#
# Cookbook Name:: base-settings
# Recipe:: user
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

group "ikuwow" do
    action :create
end

user "ikuwow" do
    gid "ikuwow"
    home "/home/ikuwow"
    action :create
end
