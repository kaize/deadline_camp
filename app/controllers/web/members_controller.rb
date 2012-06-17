class Web::MembersController < Web::ApplicationController
  def index
    @members = Member.page(params[:page])
  end

  def new
    @member = MemberRegistrationType.new

    title t('registration')
  end

  def create
    @member = MemberRegistrationType.new(params[:member])

    if @member.save
      MemberMailer.welcome(@member).deliver

      member_sign_in(@member)
      flash[:success] = flash_translate(:success).html_safe
      redirect_to :root
    else
      render :action => :new
    end
  end
end
