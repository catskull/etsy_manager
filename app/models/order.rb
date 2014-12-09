class Order < ActiveRecord::Base
  belongs_to :customer

  after_save :update_inventory_quantities

  private

  def update_inventory_quantities
    Supplies.all.each do |s|
      s.decrease(2)
    end
  end

end
