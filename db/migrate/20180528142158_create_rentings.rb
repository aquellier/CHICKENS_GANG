class CreateRentings < ActiveRecord::Migration[5.2]
  def change
    create_table :rentings do |t|
      t.references :chickens_gang, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
