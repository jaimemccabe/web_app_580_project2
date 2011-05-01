class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.text :task
      t.string :assigned_to
      t.date :due_date
      t.integer :priority
      t.string :level_of_effort

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
