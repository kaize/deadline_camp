class Web::WelcomeController < Web::ApplicationController
  def index
    @news = News.limit(configus.news.welcome_count).by_published_at
    @photo_album = PhotoAlbum.published.find_by_id(configus.main_page.photo_album)
  end
end
