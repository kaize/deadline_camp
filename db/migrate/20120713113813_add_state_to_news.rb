class AddStateToNews < ActiveRecord::Migration
  def change
    add_column :news, :state, :string
  end
end
