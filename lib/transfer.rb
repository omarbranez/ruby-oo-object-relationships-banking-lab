class Transfer
  # your code here
  attr_accessor :status
  attr_writer 
  attr_reader :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    #@transfer = "pending"
    @amount = amount
  end

  def valid?
    sender.valid? && receiver.valid? && sender.balance > amount
  end

  def execute_transaction
    if valid? && self.status == "pending"
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
      if self.status == "complete"
        sender.balance += amount
        receiver.balance -= amount
        self.status = "reversed"
      end
  end

end
