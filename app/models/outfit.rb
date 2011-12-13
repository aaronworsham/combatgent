class Outfit < ActiveRecord::Base
  has_many  :outfit_products, :dependent => :destroy
  has_many  :products, :through => :outfit_products
  
  has_many :outfit_images, :as => :viewable, :order => :position, :dependent => :destroy
  
  accepts_nested_attributes_for :outfit_products, :allow_destroy => true, :reject_if => lambda { |op| op[:product_id].blank? }
end