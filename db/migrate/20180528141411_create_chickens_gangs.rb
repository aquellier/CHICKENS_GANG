class CreateChickensGangs < ActiveRecord::Migration[5.2]
  def change
    create_table :chickens_gangs do |t|
      t.string :breed, null: false
      t.string :gang_name, null: false
      t.integer :capacity, null: false
      t.string :photo
      t.integer :year_of_birth, null: false
      t.integer :price, null: false
      t.boolean :availability, default: true
      t.timestamps
    end
  end
end
