UsersController.class_eval do
  def closet
    id = params[:id]
    if id
      @user = User.find(id)
      @users_own_closet = (current_user == @user)
    else
      load_object
      @users_own_closet = true      
    end
  end
  
  def update
    if @user.update_attributes(params[:user])
      if params[:user][:password].present?
        # this logic needed b/c devise wants to log us out after password changes
        user = User.reset_password_by_token(params[:user])
        sign_in(@user, :event => :authentication)
      end
      flash.notice = I18n.t("account_updated")
      redirect_to params[:redirect_to] || account_url
    else
      render 'edit'
    end

  end
end