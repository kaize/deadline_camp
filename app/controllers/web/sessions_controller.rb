class Web::SessionsController < Web::ApplicationController
  def new
    @member = Member.new
  end

  def create
    member = Member.find_by_email(params[:member][:email])
    if member && member.authenticate(params[:member][:password])
      member_sign_in(member)
      redirect_to root_path
    else
      @member = Member.new(params[:member])
      flash.now[:error] = flash_translate(:auth_error)
      render :action => :new
    end
  end

  def destroy
    member_sign_out
    redirect_to :root
  end
end
