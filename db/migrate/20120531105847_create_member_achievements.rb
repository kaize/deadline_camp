class CreateMemberAchievements < ActiveRecord::Migration
  def change
    create_table :member_achievements do |t|
      t.integer :member_id
      t.text :description

      t.timestamps
    end
  end
end
