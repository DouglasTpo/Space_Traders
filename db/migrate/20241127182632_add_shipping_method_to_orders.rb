class AddShippingMethodToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :shipping_method, :string
  end
end
