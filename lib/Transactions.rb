class Transactions

  attr_reader :log

  def initialize
    @log = []
  end

  def activity type, value, balance
    @log << [date, type, value, balance]
  end

  def date
    # Time.now.strftime("%d/%m/%y")
    Time.now.strftime("%d/%m/%y")
  end
end
