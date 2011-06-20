Taxon.class_eval do
  def self.header_navigation
    Taxon.where(:name => ["Shirts","Pants &amp; Shorts","Sweaters &amp; Outerwear","Suiting","Accessoies"])
  end
end