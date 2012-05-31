class CreateMemberAdditionalEducations < ActiveRecord::Migration
  def change
    create_table :member_additional_educations do |t|
      t.integer :member_id
      t.text :description

      t.timestamps
    end
  end
end
