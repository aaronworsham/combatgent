class Admin::OutfitsController < Admin::ResourceController
  before_filter :load_data, :except => [:index, :new, :create]

  protected
    
    def load_data
      @outfit = Outfit.find(params[:id])
    end

end
