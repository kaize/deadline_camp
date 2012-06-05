class MoveDicts < ActiveRecord::Migration
  def change
    rename_table :dict_languages, :languages
    rename_table :dict_program_langs, :program_langs
    rename_table :dict_databases, :databases
    rename_table :dict_os, :os
    rename_table :dict_ides, :ides
    rename_table :dict_others, :others
  end

end
