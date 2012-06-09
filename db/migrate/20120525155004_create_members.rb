class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :state
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :patronymic
      t.string :phone
      t.string :skype
      t.string :jabber
      t.integer :icq
      t.string :institute
      t.integer :start_year
      t.integer :finish_year
      t.string :department
      t.string :profession
      t.string :degree
      t.string :gpa

      t.timestamps
    end
  end
end
