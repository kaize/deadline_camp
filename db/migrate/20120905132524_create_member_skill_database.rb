class CreateMemberSkillDatabase < ActiveRecord::Migration
  def change
    create_table :member_skill_databases do |t|
      t.integer  :member_id
      t.integer  :database_id
      t.string   :level
      t.string   :duration
      t.text     :description

      t.timestamps
    end
  end
end
