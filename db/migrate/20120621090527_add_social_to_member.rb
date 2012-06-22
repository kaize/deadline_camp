class AddSocialToMember < ActiveRecord::Migration
  def change
    add_column :members, :facebook, :string
    add_column :members, :twitter, :string
    add_column :members, :vkontakte, :string
  end
end
