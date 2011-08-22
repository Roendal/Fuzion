namespace :db do
  desc 'Populate database with fake data for development'
  task :populate => [ 'db:seed', 'db:populate:create' ]
  
  namespace :populate do
    
    desc "Reload populate data"
    task :reload => [ 'db:reset', :create ]
    
    desc "Create populate data"
    task :create => :environment do
      
      require 'forgery'
      
      puts 'User population'
      time_start = Time.now      
      time_end = Time.now 
      puts '   -> ' +  (time_end - time_start).round(4).to_s + 's'
      
      
      puts 'Character population'
      time_start = Time.now      
      time_end = Time.now 
      puts '   -> ' +  (time_end - time_start).round(4).to_s + 's'
      
      
      puts 'Armor population'
      time_start = Time.now
      10.times do 
        Armor.create :name => Forgery::Name.company_name,
                    :price => Forgery::Monetary.money(:min => 100, :max => 1000)
      end
      time_end = Time.now 
      puts '   -> ' +  (time_end - time_start).round(4).to_s + 's'
      
      
      puts 'Weapon population'
      time_start = Time.now
      10.times do 
        Weapon.create :name => Forgery::Name.company_name,
                    :price => Forgery::Monetary.money(:min => 100, :max => 1000)
      end      
      time_end = Time.now 
      puts '   -> ' +  (time_end - time_start).round(4).to_s + 's'
      
      
      puts 'Consumable population'
      time_start = Time.now
      10.times do 
        Consumable.create :name => Forgery::Name.company_name,
                    :price => Forgery::Monetary.money(:min => 100, :max => 1000)
      end      
      time_end = Time.now 
      puts '   -> ' +  (time_end - time_start).round(4).to_s + 's'
      
    end
  end
end
