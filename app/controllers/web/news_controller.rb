class Web::NewsController < Web::ApplicationController
  def index
    @news = News.web.page(params[:page])
  end

  def show
    @news = News.published.find_by_uri!(params[:id])
    title @news
  end
end
