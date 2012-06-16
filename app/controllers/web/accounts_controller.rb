class Web::AccountsController < Web::ApplicationController

  before_filter :authenticate_member!

  def show
  end

  def edit
  end

  def update
    @member = MemberType.find(current_member.id)

    if @member.update_attributes(params[:member])
      flash[:success] = flash_translate(:success)
      redirect_to edit_account_path
    else
      render :action => :edit
    end
  end

end
