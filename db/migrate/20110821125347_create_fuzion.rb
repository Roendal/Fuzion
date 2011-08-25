class CreateFuzion < ActiveRecord::Migration
  def up
    create_table :characters do |t|
      t.string :name, :null => false
      t.string :surname, :null => false
      t.string :background
      t.integer :age, :null => false
      t.string :profession, :null => false
      t.references :owner, :polymorphic => true, :null => false
      t.boolean :active

      t.timestamps
    end
    
    create_table :char_sheets do |t|
      t.integer :character_id, :null => false
      
      #Main characteristics
      t.integer :int, :default => 5, :null => false
      t.integer :pre, :default => 5, :null => false
      t.integer :will, :default => 5, :null => false
      t.integer :tech, :default => 5, :null => false
      t.integer :move, :default => 5, :null => false
      t.integer :ref, :default => 5, :null => false
      t.integer :dex, :default => 5, :null => false
      t.integer :str, :default => 5, :null => false
      t.integer :con, :default => 5, :null => false
      t.integer :body, :default => 5, :null => false
      
      #Derived characteristics
      t.integer :stun, :default => 25, :null => false
      t.integer :hits, :default => 25, :null => false

      t.timestamps
    end
    
    create_table :weapons do |t|
      t.string :type
      t.string :name
      t.integer :price

      t.timestamps
    end
    
    create_table :armors do |t|
      t.string :type
      t.string :name
      t.integer :price
      
      t.boolean :head, :default => false, :null => false
      t.boolean :torso, :default => false, :null => false
      t.boolean :left_arm, :default => false, :null => false
      t.boolean :right_arm, :default => false, :null => false
      t.boolean :left_leg, :default => false, :null => false
      t.boolean :right_leg, :default => false, :null => false
      t.boolean :hands, :default => false, :null => false
      t.boolean :feet, :default => false, :null => false
      

      t.timestamps
    end
    
    create_table :consumables do |t|
      t.string :type
      t.string :name
      t.integer :price

      t.timestamps
    end
    
    create_table :items do |t|      
      t.references :article, :polymorphic => true, :null => false
      t.integer :character_id, :null => false
      t.integer :quantity, :default => 1, :null => false
      
      t.timestamps
    end
  end
  
  def down
    drop_table :characters
    drop_table :weapons
    drop_table :armors
    drop_table :consumables
  end
  
end
