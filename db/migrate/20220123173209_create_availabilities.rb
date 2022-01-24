class CreateAvailabilities < ActiveRecord::Migration[5.1]
  def change
    create_table :availabilities do |t|
      t.string :entity
      t.integer :entity_id
      t.integer :available
      t.timestamps
    end
  end
end
