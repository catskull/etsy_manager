class EmailProcessor
  def initialize(email)
    @email = email
  end

  def process
    if @email.subject.include? 'Etsy Order Confirmation'
      # referrer_email = nil
      emails = @email.body.scan(/\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b/i)
      emails.reject!{ |e| e == 'david.degraw@gmail.com' }
      # raise emails.inspect
      customer_email = emails.first
      # customer_email = emails.detect{ |e| emails.count(e) > 1}
      # referrer_email = emails.detect{ |e| emails.count(e) == 1}
      # referrer = nil
      # if referrer_email.present?
      #   referrer = Customer.where(email: referrer_email).first
      #   referrer = Customer.create(email: referrer_email) if referrer.nil?
      # end
      customer = Customer.where(email: customer_email).first
      customer = Customer.new(email: customer_email) if customer.nil?
      # customer.referred_by(referrer.id) if referrer.present?
      customer.save
      Order.create(customer: customer)
    end
  end
end
