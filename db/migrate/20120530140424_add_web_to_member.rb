class AddWebToMember < ActiveRecord::Migration
  def change
    add_column :members, :web, :string
  end
end
