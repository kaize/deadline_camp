class CreateDictLanguages < ActiveRecord::Migration
  def change
    create_table :dict_languages do |t|
      t.string :name

      t.timestamps
    end
  end
end
