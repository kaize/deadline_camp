class CreateDictOthers < ActiveRecord::Migration
  def change
    create_table :dict_others do |t|
      t.string :name

      t.timestamps
    end
  end
end
