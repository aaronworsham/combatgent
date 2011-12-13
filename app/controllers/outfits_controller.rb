class OutfitsController < Spree::BaseController
  respond_to :html
  
  def show
    @product = Product.find(params[:id])
    @outift = @product.first
  end

end