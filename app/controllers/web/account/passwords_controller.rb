class Web::Account::PasswordsController < Web::Account::ApplicationController
  before_filter :member_sign_in_by_token, :authenticate_member!

  def edit
    @member = MemberEditPasswordType.new
  end

  def update
    member = MemberEditPasswordType.find(current_member.id)
    member.update_attributes!(params[:member])

    flash[:success] = flash_translate(:success)
    redirect_to root_path
  rescue ActiveRecord::RecordInvalid => e
    @member = e.record
    render :action => :edit
  end
end
