class Web::AccountsController < Web::ApplicationController

  helper_method :member
  before_filter :authenticate_member!

  def show
  end

  def edit
  end

  def update
    @member = MemberType.find(current_member.id)

    if @member.update_attributes(params[:member])
      flash[:success] = flash_translate(:success)
      redirect_to :action => :show
    else
      render :action => :new
    end
  end

  private

    def member
      current_member
    end

end
