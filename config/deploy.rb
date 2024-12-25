# config valid for current version and patch releases of Capistrano
lock "~> 3.19.2"

set :application, "my_app_name"
# set :repo_url, "git@example.com:me/my_repo.git"

set :application, "blog_app"
set :repo_url, "https://github.com/yuutyan2008/dpro_aws.git"
set :bundle_without, %w{test}.join(':')
set :rbenv_ruby, '3.3.0'
append :linked_files, 'config/secrets.yml'
set :log_level, :info
set :keep_releases, 5
set :linked_files, %w{config/secrets.yml}   # 4
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets public/uploads}

# after 'deploy:published', 'deploy:seed'   # 9
after 'deploy:finished', 'deploy:restart'   # 10

# namespace :deploy do
#   desc 'Run seed'
#   task :seed do
#     on roles(:db) do
#       with rails_env: fetch(:rails_env) do
#         within current_path do
#           execute :bundle, :exec, :rake, 'db:seed'
#         end
#       end
#     end
#   end
#   desc 'Restart application'
#   task :restart do
#     invoke 'unicorn:restart'
#   end
# end
