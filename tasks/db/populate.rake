namespace :db do
  desc 'Populate database with fake data for development'
  task :populate => [ 'db:seed', 'db:populate:create' ]
  
  namespace :populate do
    
    desc "Reload populate data"
    task :reload => [ 'db:reset', :create ]
    
    desc "Create populate data"
    task :create => :environment do
      
      #TODO 
      
    end
  end
end
