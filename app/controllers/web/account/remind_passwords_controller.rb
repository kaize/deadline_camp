class Web::Account::RemindPasswordsController < Web::Account::ApplicationController
  def new
  end

  def create
    @member = Member.find_by_email(params[:member][:email])
    if @member
      @member.generate_auth_token
      @member.save
      MemberMailer.remind_password(@member).deliver
      flash[:success] = flash_translate(:success)
      redirect_to root_path
    else
      flash.now[:error] = flash_translate(:error)
      render :action => :new
    end
  end
end
