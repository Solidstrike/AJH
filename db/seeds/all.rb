require 'rake'
Rails.application.load_tasks

%w{
  users
  projects
  reviews
  posts
}.each { |task| Rake::Task["db:seed:#{task}"].invoke }
