class ClosetItemsController < Spree::BaseController
  respond_to :html
  
  def create
    current_user.closet_items.create(params[:closet_item])
    redirect_to closet_users_path
  end
  
  def destroy
    ClosetItem.find(params[:id]).destroy
    redirect_to closet_users_path
  end

end