class ChangeDefaultToMemberPassword < ActiveRecord::Migration
  def up
    change_column :members, :password_digest, :string, :null => false
  end

  def down
    change_column :members, :password_digest, :string, :null => true
  end
end
