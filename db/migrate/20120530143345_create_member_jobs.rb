class CreateMemberJobs < ActiveRecord::Migration
  def change
    create_table :member_jobs do |t|
      t.integer :member_id
      t.string  :company
      t.date    :started_at
      t.date    :finished_at
      t.string  :job
      t.string  :responsibility
      t.text    :achievements

      t.timestamps
    end
  end
end
