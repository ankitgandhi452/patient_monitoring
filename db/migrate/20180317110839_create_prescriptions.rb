class CreatePrescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :prescriptions do |t|
      t.string :image, default: nil
      t.integer :user_prescription_id, default: nil
      # t.belongs_to :user_prescription
      t.timestamps
    end
  end
end
