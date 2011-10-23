class AddUserMeasurementFields < ActiveRecord::Migration
  def self.up
    add_column :users, :neck_inches, :float
    add_column :users, :chest_inches, :float
    add_column :users, :back_inches, :float
    add_column :users, :shoulder_inches, :float
    add_column :users, :right_sleeve_inches, :float
    add_column :users, :left_sleeve_inches, :float
    add_column :users, :stomach_inches, :float
    add_column :users, :bicep_inches, :float
    add_column :users, :wrist_inches, :float
    add_column :users, :waist_inches, :float
    add_column :users, :hip_inches, :float
    add_column :users, :belt_inches, :float
    add_column :users, :inseam_inches, :float
    add_column :users, :outseam_inches, :float
    add_column :users, :crotch_inches, :float
    add_column :users, :thigh_inches, :float
    add_column :users, :knee_inches, :float
    add_column :users, :ankle_inches, :float
    add_column :users, :height_inches, :float
    add_column :users, :weight_pounds, :integer
    add_column :users, :jean_size, :string
    add_column :users, :shoe_size, :float
    add_column :users, :watch_hand, :string
  end

  def self.down
    remove_column :users, :neck_inches
    remove_column :users, :chest_inches
    remove_column :users, :back_inches
    remove_column :users, :shoulder_inches
    remove_column :users, :right_sleeve_inches
    remove_column :users, :left_sleeve_inches
    remove_column :users, :stomach_inches
    remove_column :users, :bicep_inches
    remove_column :users, :wrist_inches
    remove_column :users, :waist_inches
    remove_column :users, :hip_inches
    remove_column :users, :belt_inches
    remove_column :users, :inseam_inches
    remove_column :users, :outseam_inches
    remove_column :users, :crotch_inches
    remove_column :users, :thigh_inches
    remove_column :users, :knee_inches
    remove_column :users, :ankle_inches
    remove_column :users, :height_inches
    remove_column :users, :weight_pounds
    remove_column :users, :jean_size
    remove_column :users, :shoe_size
    remove_column :users, :watch_hand
  end
end
