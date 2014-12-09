class OrdersBelongToCustomers < ActiveRecord::Migration
  def change
    remove_column :orders, :customer_email, :string
    remove_column :orders, :referrer_email, :string
    add_column :orders, :customer_id, :integer
    add_index :orders, :customer_id
  end
end
