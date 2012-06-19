class AddGroupToMember < ActiveRecord::Migration
  def change
    add_column :members, :group, :string
  end
end
