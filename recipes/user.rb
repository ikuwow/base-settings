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

user_list = data_bag('users')

user_list.each do |ul|
    u = data_bag_item('users',ul)
    user u["id"] do
        comment u["comment"]
        home "/home/#{u["id"]}"
        action :create
    end
end
