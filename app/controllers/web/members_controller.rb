class Web::MembersController < Web::ApplicationController
  def index
    @members = Member.page(params[:page])
  end

  def new
    @member = Member.new
  end

  def create
    @member = MemberType.new(params[:member])

    if @member.save
      MemberMailer.welcome(@member).deliver

      flash[:success] = flash_translate(:success)
      redirect_to :root
    else
      render :action => :new
    end
  end
end
