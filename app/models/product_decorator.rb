Product.class_eval do
  has_many :closet_items
  has_many :users_have_in_closet, :through => :closet_items, :source => :user
  
  has_many :outfit_products
  has_many :outfits, :through => :outfit_products
  
  belongs_to :fit
  
  def outfit
    outfits.first
  end
  
  def has_same_taxon?(product)
    self.taxons.any? { |t| product.taxons.include?(t) }
  end
end