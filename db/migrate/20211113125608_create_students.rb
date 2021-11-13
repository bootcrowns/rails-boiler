class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :nationality
      t.string :email
      t.string :registered_id
      t.string :phone_number

      t.timestamps
    end
  end
end
