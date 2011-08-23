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
      10.times do
        User.create! :name => Forgery::Name.full_name,
                     :email => Forgery::Internet.email_address
      end
      time_end = Time.now 
      puts '   -> ' +  (time_end - time_start).round(4).to_s + 's'
      
      
      puts 'Character population'
      time_start = Time.now      
      User.all.each do |user|
        char = Character.create! :name => Forgery::Name.first_name,
                          :surname => Forgery::Name.last_name,
                          :age => Forgery::Basic.number(:at_least => 20, :at_most => 50),
                          :profession => Forgery::Name.company_name,
                          :background => Forgery::LoremIpsum.sentences(1,:random => true),
                          :active => true,
                          :owner => user
        CharSheet.create! :character => char
      end
      time_end = Time.now 
      puts '   -> ' +  (time_end - time_start).round(4).to_s + 's'
      
      
      puts 'Armor population'
      time_start = Time.now
      10.times do 
        Armor.create! :name => Forgery::Name.company_name,
                    :price => Forgery::Monetary.money(:min => 100, :max => 1000)
      end
      time_end = Time.now 
      puts '   -> ' +  (time_end - time_start).round(4).to_s + 's'
      
      
      puts 'Weapon population'
      time_start = Time.now
      10.times do 
        Weapon.create! :name => Forgery::Name.company_name,
                    :price => Forgery::Monetary.money(:min => 100, :max => 1000)
      end      
      time_end = Time.now 
      puts '   -> ' +  (time_end - time_start).round(4).to_s + 's'
      
      
      puts 'Consumable population'
      time_start = Time.now
      10.times do 
        Consumable.create! :name => Forgery::Name.company_name,
                    :price => Forgery::Monetary.money(:min => 100, :max => 1000)
      end      
      time_end = Time.now 
      puts '   -> ' +  (time_end - time_start).round(4).to_s + 's'
      
    end
  end
end
