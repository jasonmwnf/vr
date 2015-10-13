set :stage, :production

role :app, %w{deployer@50.57.132.227}
role :web, %w{deployer@50.57.132.227}
role :db,  %w{deployer@50.57.132.227}


# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

server '50.57.132.227', user: 'deployer', roles: %w{web app db}