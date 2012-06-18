class AddHowHearToMember < ActiveRecord::Migration
  def change
    add_column :members, :how_hear_about_as, :string
  end
end
