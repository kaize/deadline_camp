class AddStubyMonthToMember < ActiveRecord::Migration
  def change
    add_column :members, :start_month, :string
    add_column :members, :finish_month, :string
  end
end
