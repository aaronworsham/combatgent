class OutfitsController < Spree::BaseController
  respond_to :html
  
  def show
    @product = Product.find(params[:product_id])
    @outfit = Outfit.find(params[:id])
  end

end