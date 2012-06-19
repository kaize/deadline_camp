class Web::SessionsController < Web::ApplicationController
  def new
    @member = Member.new
  end

  def create
    member = Member.find_by_email!(params[:member][:email])
    if member.authenticate(params[:member][:password])
      member_sign_in(member)
      redirect_to root_path
    else
      @member = Member.new(params[:member])
      flash.now[:error] = flash_translate(:password_error)
      render :action => :new
    end
  rescue ActiveRecord::RecordNotFound
    @member = Member.new(params[:member])
    flash.now[:error] = flash_translate(:email_error)
    render :action => :new
  rescue BCrypt::Errors::InvalidHash
    @member = Member.new(params[:member])
    flash.now[:error] = flash_translate(:auth_error)
    render :action => :new
  end

  def destroy
    member_sign_out
    redirect_to :root
  end
end
