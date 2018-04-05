class CreateUserPrescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :user_prescriptions do |t|
      t.string :description, default: nil
      t.string :doctor_name, default: nil
      t.datetime :date_of_upload, default: nil

      t.timestamps

      t.belongs_to :user, foreign_key: true
    end
  end
end
