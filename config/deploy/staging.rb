set :rails_env, :staging
set :branch, 'develop'
set :user, 'deadline_camp_staging'
set :keep_releases, 5

role :web, '85.143.166.207'
role :app, '85.143.166.207'
role :db,  '85.143.166.207', :primary => true

