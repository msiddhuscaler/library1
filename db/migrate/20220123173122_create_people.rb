class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :full_name
      t.string :email
      t.string :phone_number
      t.timestamps
    end
  end
end
