class AddHobbyToMember < ActiveRecord::Migration
  def change
    add_column :members, :hobby, :string
    add_column :members, :sport, :string
  end
end
