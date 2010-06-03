namespace :app do
  
  desc "Set up the app for new devs"
  task :setup do
    unless File.exist?("config/database.yml")
      puts "No database.yml found. Copying sample using SQLite3"
      FileUtils.cp "config/database.yml.example", "config/database.yml"
    end
    Rake::Task["gems:install_all"].invoke
    Rake::Task["db:bootstrap"].invoke

    
  end
  
  
  
  
end

namespace :gems do
  task :install_all do
    puts "Installing gems for all environments"
    `rake gems:install`
    `rake RAILS_ENV=test gems:install`
    'rake RAILS_ENV=cucumber gems:install'
  end
end

namespace :db do
  
  task :bootstrap do
    if File.exist?("db/schema.rb")
      Rake::Task["db:schema:load"].invoke
    end
    Rake::Task["db:migrate"].invoke
    Rake::Task["db:seed"].invoke
    Rake::Task["db:test:prepare"].invoke
  end
  
end