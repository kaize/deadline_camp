class Web::Admin::NewsController < Web::Admin::ApplicationController
  def index
    @search = News.metasearch(params[:search])
    @news = @search.page(params[:page])
  end

  def new
    @news = News.new
  end

  def edit
    @news = News.find(params[:id])
  end

  def create
    @news = News.new params[:news]

    if @news.save
      flash[:success] = flash_translate(:success)
      #redirect_to :action => :edit
      redirect_to edit_admin_news_path(@news.id)
    else
      render :action => :new
    end
  end

  def update
    @news = News.find params[:id]

    if @news.update_attributes(params[:news])
      flash[:success] = flash_translate(:success)
      redirect_to edit_admin_news_path(@news.id)
    else
      render :action => :edit
    end
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy
    redirect_to admin_news_index_path
  end
end
