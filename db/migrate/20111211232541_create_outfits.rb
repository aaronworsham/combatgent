class CreateOutfits < ActiveRecord::Migration
  def self.up
    create_table :outfits do |t|
      t.string  :title
      t.text    :description
      t.timestamps
    end
    
    create_table :outfit_products do |t|
      t.integer :outfit_id
      t.integer :product_id
      t.timestamps
    end
  end

  def self.down
    drop_table :outfits
    drop_table :outfit_products
  end
end
