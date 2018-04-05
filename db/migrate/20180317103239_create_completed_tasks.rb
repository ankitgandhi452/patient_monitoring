class CreateCompletedTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :completed_tasks do |t|
      t.datetime :completion_date, default: nil
      t.integer :task_id, default: nil

      t.timestamps
      t.belongs_to :task, unique: true
    end
  end
end
