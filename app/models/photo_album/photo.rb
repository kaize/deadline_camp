class PhotoAlbum::Photo < ActiveRecord::Base
  attr_accessible :image, :name, :photo_album_id

  belongs_to :photo_album

  mount_uploader :image, PhotoAlbum::PhotoUploader

end
