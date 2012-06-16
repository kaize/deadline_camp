class Web::NewsController < Web::ApplicationController
  def show
    @news = News.find_by_uri!(params[:id])
    title @news
  end
end
