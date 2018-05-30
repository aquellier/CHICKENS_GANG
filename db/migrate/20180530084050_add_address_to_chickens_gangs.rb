class AddAddressToChickensGangs < ActiveRecord::Migration[5.2]
  def change
    add_column :chickens_gangs, :address, :string
  end
end
