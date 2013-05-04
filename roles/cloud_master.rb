name "cloud_master"
description "Master node"
run_list "recipe[apt]","recipe[build-essential]","recipe[git]","recipe[sinatra_app]","recipe[cloud-crawler::master]","recipe[chef-client]"
