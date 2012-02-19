OrdersController.class_eval do
  def populate
    @order = current_order(true)

    if params[:products].each_value{|v| v.nil?}.size > 0
      flash[:error] = t('no_product_variant')
      redirect_to :back
    else  
      params[:products].each do |product_id,variant_id|
        quantity = params[:quantity].to_i if !params[:quantity].is_a?(Hash)
        quantity = params[:quantity][variant_id].to_i if params[:quantity].is_a?(Hash)
        @order.add_variant(Variant.find(variant_id), quantity) if quantity > 0
      end if params[:products]

      params[:variants].each do |variant_id, quantity|
        quantity = quantity.to_i
        @order.add_variant(Variant.find(variant_id), quantity) if quantity > 0
      end if params[:variants]

      fire_event('spree.cart.add')
      fire_event('spree.order.contents_changed')
      respond_with(@order) { |format| format.html { redirect_to cart_path } }
    end
  end
end
