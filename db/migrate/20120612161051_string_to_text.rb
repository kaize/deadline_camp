class StringToText < ActiveRecord::Migration
  def change
    change_column :member_skills, :description, :text
    change_column :member_skill_others, :description, :text
    change_column :member_jobs, :responsibility, :text
    change_column :member_others, :description, :text
    change_column :members, :hobby, :text
    change_column :members, :sport, :text
  end
end
