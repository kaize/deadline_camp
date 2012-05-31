class CreateMemberSkills < ActiveRecord::Migration
  def change
    create_table :member_skills do |t|
      t.integer :member_id
      t.string :type
      t.references :dict, :polymorphic => true
      t.string :level
      t.string :duration
      t.string :description

      t.timestamps
    end
  end
end
