class AddUserFields < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string, deafult: nil
    add_column :users, :last_name, :string, deafult: nil
    add_column :users, :mobile_number, :string, deafult: nil
    add_column :users, :age, :integer, deafult: nil
    add_column :users, :date_of_birth, :datetime, deafult: nil

    add_index :users, :mobile_number, unique: true
  end
end
