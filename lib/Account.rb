class Account
  BALANCE = 0.00

  attr_reader :balance

  def initialize
    @balance = BALANCE
  end

  def deposit value
    @balance = @balance + value
  end

  def debit value
    @balance = @balance - value
  end

end
