class AddFieldsToMember < ActiveRecord::Migration
  def change
    add_column :members, :city, :string
    add_column :members, :birthday, :date
  end
end
