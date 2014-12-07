class EmailProcessor
  def initialize(email)
    @email = email
  end

  def process
    Order.create(body: @email.body, email: @email.from[:email])
  end
end
