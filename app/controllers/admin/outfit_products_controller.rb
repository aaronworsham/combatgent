class Admin::OutfitProductsController < Admin::ResourceController
  before_filter :load_data
  
  private 
  
    def load_data
      @outfit_product = OutfitProduct.find(params[:id]) if params[:id].present?
      @outfit = Outfit.find(params[:outfit_id])
      @products = Product.all.reject{|p| @outfit.products.include? p}
    end
  
    def location_after_save
      admin_outfit_outfit_products_url(@outfit)
    end
end
