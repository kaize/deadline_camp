class AddConfirmColumnsToMember < ActiveRecord::Migration
  def change
    add_column :members, :camp_time,     :boolean
    add_column :members, :camp_life,     :boolean
    add_column :members, :camp_fee,      :boolean
    add_column :members, :camp_notebook, :boolean
    add_column :members, :camp_training, :boolean
  end
end
