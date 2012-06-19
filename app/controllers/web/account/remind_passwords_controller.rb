class Web::Account::RemindPasswordsController < Web::Account::ApplicationController
  def new
    @member = Member.new
  end

  def create
    member = Member.find_by_email!(params[:member][:email])
    member.generate_auth_token
    member.save!
    MemberMailer.remind_password(member).deliver
    flash[:success] = flash_translate(:success)
    redirect_to root_path
  rescue ActiveRecord::RecordNotFound
    @member = Member.new params[:member]
    flash.now[:error] = flash_translate(:not_found)
    render :action => :new
  rescue ActiveRecord::RecordInvalid => e
    @member = e.record
    flash.now[:error] = flash_translate(:error)
    render :action => :new
  end
end
