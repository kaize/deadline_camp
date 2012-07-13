class AddFieldsToPhotoAlbumPhoto < ActiveRecord::Migration
  def change
    add_column :photo_album_photos, :description, :string
    add_column :photo_album_photos, :main, :boolean
  end
end
