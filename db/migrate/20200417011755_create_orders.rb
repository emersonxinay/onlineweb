class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.boolean :payed, default: false
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.references :state_order, foreign_key: true
      #t.boolen :payed, default: false
      t.datetime :delivery_date


      t.timestamps
    end
  end
end
