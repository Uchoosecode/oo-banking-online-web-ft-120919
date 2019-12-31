class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = 50
  end
  
  def valid?
    if @sender.valid? && @receiver.valid? == true
      true
    else
      false
    end
  end
  
  def execute_transaction
    while sender.valid? && receiver.valid? == true
      if @sender.balance > @amount && @status == "pending"
        @sender.balance -= @amount
        @receiver.balance += @amount
        @status = "complete"
    
      else sender.valid? == false 
        @sender.close_account
        @status = "rejected"
        "Transaction rejected. Please check your account balance."
      end
    end
    
  end
  
end
