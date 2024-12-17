set :stage, :production
ask :branch, "feature/deployment"

server 'ubuntu@18.219.57.178', user: 'ubuntu', roles: %w{web app db}, my_property: :my_value

server '18.219.57.178',
       user: 'ubuntu',
       roles: %w{web app db},
       ssh_options: {
         user: fetch(:user),
         forward_agent: false,
         auth_methods: %w(publickey password)
         # keys: ".ssh/id_ed25519"
       }

set :rails_env, "production"
set :puma_env, "production"
set :puma_config_file, "#{shared_path}/config/puma.rb"
set :puma_conf, "#{shared_path}/config/puma.rb"


## Run this command if you got any server access issue while deploying
#
#
# ssh-add -K ~/.ssh/id_rsa
