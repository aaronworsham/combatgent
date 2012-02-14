class Admin::FitsController < Admin::ResourceController
  before_filter :load_data, :except => [:index, :new, :create]

  protected
    
    def load_data
      @fit = Fit.find(params[:id])
    end

end
