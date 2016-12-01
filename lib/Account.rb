require_relative './Transactions.rb'

class Account
  BALANCE = 0.00

  attr_reader :balance,
              :activityLog

  def initialize(activityLog)
    @balance = BALANCE
    @activityLog = activityLog
  end

  def deposit value
    @balance += value
    @activityLog.activity('deposit', value, @balance)
  end

  def debit value
    @balance -= value
    @activityLog.activity('debit', value, @balance)
  end

end
