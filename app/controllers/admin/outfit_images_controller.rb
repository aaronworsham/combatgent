class Admin::OutfitImagesController < Admin::ResourceController
  before_filter :load_data

  create.before :set_viewable
  update.before :set_viewable
  destroy.before :destroy_before

  def update_positions
    params[:positions].each do |id, index|
      Image.update_all(['position=?', index], ['id=?', id])
    end

    respond_to do |format|
      format.js  { render :text => 'Ok' }
    end
  end

  private
  
    def location_after_save
      admin_outfit_outfit_images_url(@outfit)
    end

    def load_data
      @outfit = Outfit.find(params[:outfit_id])
    end

    def set_viewable
      @outfit_image.viewable = @outfit
    end

    def destroy_before
      @viewable = @outfit_image.viewable
    end

end
