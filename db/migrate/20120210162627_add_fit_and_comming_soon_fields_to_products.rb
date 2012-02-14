class AddFitAndCommingSoonFieldsToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :coming_soon, :boolean, :default => false, :null => false
    add_column :products, :fit_id, :integer
    
    create_table :fits do |t|
      t.string :title
      t.text :description
      t.timestamps
    end
  end

  def self.down
    remove_column :products, :coming_soon
    remove_column :products, :fit_id
    
    drop_table :fits
  end
end
