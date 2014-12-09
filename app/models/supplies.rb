class Supplies < ActiveRecord::Base

  def decrease(amount)
    self.quantity -= amount
    self.save
  end

end
