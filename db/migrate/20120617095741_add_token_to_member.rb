class AddTokenToMember < ActiveRecord::Migration
  def change
    add_column :members, :auth_token, :string
  end
end
