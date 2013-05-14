set :rails_env, 'production'
set :branch do
  raise "Use tags: TAG=v2" unless ENV['TAG']
  ENV['TAG']
end
set :user, 'deadline_camp_production'
set :keep_releases, 15

role :web, "62.76.191.134"
role :app, "62.76.191.134"
role :db,  "62.76.191.134", :primary => true

set :whenever_command, "bundle exec whenever"
require "whenever/capistrano"
