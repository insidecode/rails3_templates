set :application, ''

set :scm, :git
set :repository,  'git@github.com:USER/REPO.git'

set :deploy_to, "/var/www/#{application}"

server 'SERVER', :app, :web, :db, :primary => true

# uncomment above if you need to change user
# set :user, 'ubuntu'

namespace :deploy do
  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end

  desc 'Restarting passenger'
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "cd #{current_path} && bundle exec jammit -f && bundle check && touch tmp/restart.txt"
  end
end

namespace :bundle do
  desc 'Install dependencies - bundle install'
  task :install, :roles => :app, :except => { :no_release => true } do
    run "cd #{current_path} && sudo bundle install"
    deploy.restart
  end
end