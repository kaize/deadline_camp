class AddSchoolyearToMember < ActiveRecord::Migration
  def change
    add_column :members, :schoolyear_count, :integer
  end
end
