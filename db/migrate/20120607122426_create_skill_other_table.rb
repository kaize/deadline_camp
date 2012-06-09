class CreateSkillOtherTable < ActiveRecord::Migration
  def change
    create_table :member_skill_others do |t|
      t.integer :member_id
      t.string :name
      t.string :type
      t.string :level
      t.string :duration
      t.string :description

      t.timestamps
    end
  end
end
