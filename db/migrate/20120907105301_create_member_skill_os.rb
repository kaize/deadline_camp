class CreateMemberSkillOs < ActiveRecord::Migration
  def change
    create_table :member_skill_os do |t|
      t.integer  :member_id
      t.integer  :os_id
      t.string   :level
      t.string   :duration
      t.text     :description

      t.timestamps
    end
  end
end
