class AddOwnerToChickensGangs < ActiveRecord::Migration[5.2]
  def change
    add_column :chickens_gangs, :owner_id, :integer
    add_index :chickens_gangs, :owner_id
  end
end
