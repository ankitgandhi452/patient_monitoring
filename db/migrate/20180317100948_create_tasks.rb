class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :header, default: nil
      t.text :description, default: nil
      t.string :precautions, default: nil
      t.datetime :perform_on, default: nil
      t.integer :user_prescription_id, default: nil
      t.timestamps
      t.belongs_to :user_prescription

    end
  end
end
