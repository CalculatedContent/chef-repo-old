#
# Cookbook Name:: cloud_crawler
# Recipe:: default
#
# Copyright 2013, Calculated Content
#
# All rights reserved - Do Not Redistribute

include_recipe "cloud_crawler::crawler"
include_recipe "cloud_crawler::monitor"

