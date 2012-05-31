class CreateDictIdes < ActiveRecord::Migration
  def change
    create_table :dict_ides do |t|
      t.string :name

      t.timestamps
    end
  end
end
