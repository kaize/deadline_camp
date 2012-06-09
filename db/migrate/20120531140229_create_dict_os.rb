class CreateDictOs < ActiveRecord::Migration
  def change
    create_table :dict_os do |t|
      t.string :name

      t.timestamps
    end
  end
end
