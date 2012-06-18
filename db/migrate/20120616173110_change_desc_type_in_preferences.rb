class ChangeDescTypeInPreferences < ActiveRecord::Migration
  def change
    change_column :member_preferences, :description, :text
  end
end
