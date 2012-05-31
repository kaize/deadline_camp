class CreateDictDatabases < ActiveRecord::Migration
  def change
    create_table :dict_databases do |t|
      t.string :name

      t.timestamps
    end
  end
end
