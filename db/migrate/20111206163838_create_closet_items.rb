class CreateClosetItems < ActiveRecord::Migration
  def self.up
    create_table :closet_items do |t|
      t.integer :user_id
      t.integer :product_id
      t.timestamps
    end
  end

  def self.down
    drop_table :closet_items
  end
end