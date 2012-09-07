class CreateMemberSkillProgramLang < ActiveRecord::Migration
  def change
    create_table :member_skill_program_langs do |t|
      t.integer  :member_id
      t.integer  :program_lang_id
      t.string   :level
      t.string   :duration
      t.text     :description

      t.timestamps
    end
  end
end
