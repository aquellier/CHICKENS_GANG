class AddPriceToChickensGangs < ActiveRecord::Migration[5.2]
  def change
    add_monetize :chickens_gangs, :price, currency: { present: false}
  end
end
