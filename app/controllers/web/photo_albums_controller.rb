class Web::PhotoAlbumsController < Web::ApplicationController
  def index
    @photo_albums = PhotoAlbumDecorator.decorate PhotoAlbum.published
  end
end
