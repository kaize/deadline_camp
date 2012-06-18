class Web::Admin::PagesController < Web::Admin::ApplicationController
  def index
    @search = Page.metasearch(params[:search])
    @pages = @search.page(params[:page])
  end

  def new
    @page = Page.new
  end

  def edit
    @page = Page.find(params[:id])
  end

  def create
    @page = Page.new params[:page]

    if @page.save
      flash[:success] = flash_translate(:success)
      #redirect_to :action => :edit
      redirect_to edit_admin_page_path(@page.id)
    else
      render :action => :new
    end
  end

  def update
    @page = Page.find params[:id]

    if @page.update_attributes(params[:page])
      flash[:success] = flash_translate(:success)
      redirect_to edit_admin_page_path(@page.id)
    else
      render :action => :edit
    end
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to admin_pages_path
  end
end
