# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'vr'
set :repo_url, 'git@github.com:staycreativedesign/vr.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/var/www/vr'
set :passenger_restart_with_touch, true
# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}

# Default value for keep_releases is 5
set :keep_releases, 2
before 'deploy', 'rvm1:install:gems'

namespace :figaro do
  desc "SCP transfer figaro configuration to the shared folder"
  task :setup do
      on roles(:app) do
          upload! "config/application.yml", "#{shared_path}/application.yml", via: :scp
      end
  end

  desc "Symlink application.yml to the release path"
  task :symlink do
      on roles(:app) do
          execute "ln -sf #{shared_path}/application.yml #{release_path}/config/application.yml"
      end
  end

end

namespace :private_pub do
  desc "Start private_pub server"
  task :start do
    run "cd #{current_path};RAILS_ENV=production bundle exec rackup private_pub.ru -s thin -E production -D -P tmp/pids/private_pub.pid"
  end

  desc "Stop private_pub server"
  task :stop do
    run "cd #{current_path};if [ -f tmp/pids/private_pub.pid ] && [ -e /proc/$(cat tmp/pids/private_pub.pid) ]; then kill -9 `cat tmp/pids/private_pub.pid`; fi"
  end

  desc "Restart private_pub server"
  task :restart do
    find_and_execute_task("private_pub:stop")
    find_and_execute_task("private_pub:start")
  end
end

namespace :deploy do
  before :updated, "figaro:setup"
  before :updated, "figaro:symlink"
  after  :restart, "private_pub:restart"
end
