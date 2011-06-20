Taxon.class_eval do
  def self.header_navigation
    Taxon.where(:name => ["Shirts","Pants & Shorts","Sweaters & Outerwear","Suiting","Accessories"])
  end
end