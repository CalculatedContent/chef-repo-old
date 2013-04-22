#
# Cookbook Name:: cloud_crawler::master
# Recipe:: default
#
# Copyright 2013, Calculated Content
#
# All rights reserved - Do Not Redistribute
include_recipe 'git'
include_recipe "ruby_193"

include_recipe 's3cmd'
include_recipe 'redisio'
include_recipe 'redisio::install'
include_recipe 'redisio::enable'

gem_package "bundler"

git "/home/ubuntu/cloud_crawler" do
    repository "https://github.com/charlesmartin14/cloud_crawler.git"
    reference "master"
    action :sync
end

execute "crawlerInstall" do
    command "cd /home/ubuntu/cloud_crawler/cloud-crawler;
    bundle install;gem build cloud_crawler.gemspec; gem install cloud_crawler*.gem"
    action :run
end

