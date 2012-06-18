class Web::NewsController < Web::ApplicationController
  def index
    @news = News.page(params[:page])
  end

  def show
    @news = News.find_by_uri!(params[:id])
    title @news
  end
end
