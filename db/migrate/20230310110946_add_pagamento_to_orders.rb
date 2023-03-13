class AddPagamentoToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :pagamento, :integer, default: 1
  end
end
