class CreateBorrowers < ActiveRecord::Migration[5.1]
  def change
    create_table :borrowers do |t|
      t.timestamp :borrower_date
      t.timestamp :due_date
      t.belongs_to :books
      t.belongs_to :people
      t.boolean :is_returned
      t.timestamps
    end
  end
end
