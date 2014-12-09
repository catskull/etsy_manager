class RemoveBodyFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :body, :text
  end
end
