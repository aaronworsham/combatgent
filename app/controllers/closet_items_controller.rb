class ClosetItemsController < Spree::BaseController
  respond_to :html
  
  def create
    current_user.closet_items.create(params[:closet_item])
    redirect_to my_closet_path
  end
  
  def destroy
    ClosetItem.find(params[:id]).destroy
    redirect_to my_closet_path
  end

end