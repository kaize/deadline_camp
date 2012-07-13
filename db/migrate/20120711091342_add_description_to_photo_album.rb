class AddDescriptionToPhotoAlbum < ActiveRecord::Migration
  def change
    add_column :photo_albums, :description, :string
  end
end
