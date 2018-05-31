class AddPaymentToRentings < ActiveRecord::Migration[5.2]
  def change
    add_column :rentings, :state, :string
    add_column :rentings, :payment, :jsonb
  end
end
