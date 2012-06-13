class Web::Admin::SessionsController < Web::Admin::BaseApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_email(params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      sign_in(@user)
      redirect_to admin_root_path
    else
      @user = User.new(params[:user])
      flash.now[:error] = flash_translate(:authenticate_error)
      render :action => :new
    end
  end

  def destroy
    sign_out
    redirect_to :root
  end
end
