class CreateFuzion < ActiveRecord::Migration
  def up
    create_table :characters do |t|
      t.string :name
      t.string :surname
      t.string :background
      t.integer :age
      t.string :profession
      t.references :owner, :polymorphic => true
      t.boolean :active

      t.timestamps
    end
    
    create_table :weapons do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
    
    create_table :armors do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
    
    create_table :consumables do |t|
      t.string :name
      t.integer :price

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
