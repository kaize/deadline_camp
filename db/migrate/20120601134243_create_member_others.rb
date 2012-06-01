class CreateMemberOthers < ActiveRecord::Migration
  def change
    create_table :member_others do |t|
      t.integer :member_id
      t.string :description

      t.timestamps
    end
  end
end
