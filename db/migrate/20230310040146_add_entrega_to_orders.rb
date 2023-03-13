class AddEntregaToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :entrega, :string
  end
end
