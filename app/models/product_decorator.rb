Product.class_eval do
  has_many :closet_items
  has_many :users, :through => :closet_items, :as => :users_have_in_closet
end