class AddNewValuesToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :payed, :boolean
    add_column :orders, :price, :integer
    add_column :orders, :quantity, :integer
  end
end
