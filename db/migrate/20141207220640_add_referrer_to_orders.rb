class AddReferrerToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :customer_email, :string
    add_column :orders, :referrer_email, :string
    remove_column :orders, :email, :string
  end
end
