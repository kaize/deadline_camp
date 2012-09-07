class CreateMemberSkillIde < ActiveRecord::Migration
  def change
    create_table :member_skill_ides do |t|
      t.integer  :member_id
      t.integer  :ide_id
      t.string   :level
      t.string   :duration
      t.text     :description

      t.timestamps
    end
  end
end
