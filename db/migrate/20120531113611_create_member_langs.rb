class CreateMemberLangs < ActiveRecord::Migration
  def change
    create_table :member_langs do |t|
      t.integer :member_id
      t.integer :language_id
      t.string :level

      t.timestamps
    end
  end
end
