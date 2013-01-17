set :application, 'capistut'
set :repository, 'git@github.com:dimoreira/capistut.git'
set :scm, :git
set :deploy_to, "/home/ubuntu/apps/#{application}"
set :deploy_via, :remote_cache
ssh_options[:forward_agent] = true

server "estilingue.co", :app, :web, :db, :primary => true
ssh_options[:keys] = ["#{ENV['HOME']}/.ec2/estilingue_keypair.pem"]

set :user, "ubuntu"
set :scm_username, "dimoreira"
