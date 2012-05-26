set :rails_env, :staging
set :branch, 'develop'
set :user, 'deadline_camp_staging'
set :keep_releases, 5

role :web, "188.40.255.120"
role :app, "188.40.255.120"
role :db,  "188.40.255.120", :primary => true

