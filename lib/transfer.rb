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
    if self.valid? == true 
      @receiver.deposit( @amount )
      @sender.deposit( @amount) 
      @status = "complete"
    end
  end
  
end
