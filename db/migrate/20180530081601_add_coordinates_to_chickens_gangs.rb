class AddCoordinatesToChickensGangs < ActiveRecord::Migration[5.2]
  def change
    add_column :chickens_gangs, :latitude, :float
    add_column :chickens_gangs, :longitude, :float
  end
end
