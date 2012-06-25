class Web::Admin::MembersController < Web::Admin::ApplicationController
  def index
    @search = Member.active.by_id.metasearch(params[:search])
    @members = @search.page(params[:page])
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = MemberType.find(params[:id])

    if @member.update_attributes(params[:member])
      flash[:success] = flash_translate(:success)
      redirect_to :action => :edit
    else
      render :action => :edit
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.bust
    redirect_to :action => :index
  end
end
