class EmailProcessor
  def initialzie(email)
    @email = email
  end

  def process
    Order.create!({ body: email.body, email: email.from })
  end
end
