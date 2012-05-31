class CreateDictProgramLangs < ActiveRecord::Migration
  def change
    create_table :dict_program_langs do |t|
      t.string :name

      t.timestamps
    end
  end
end
