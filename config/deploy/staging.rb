set :rails_env, 'staging'
set :branch, 'develop'
set :user, 'deadline_camp_staging'
set :keep_releases, 5

role :web, '62.76.190.226'
role :app, '62.76.190.226'
role :db,  '62.76.190.226', :primary => true

