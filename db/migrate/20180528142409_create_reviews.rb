class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.string :content
      t.integer :rating, null: false
      t.references :chickens_gang, foreign_key: true

      t.timestamps
    end
  end
end
