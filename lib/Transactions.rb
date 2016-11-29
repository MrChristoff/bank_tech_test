class Transactions

  attr_reader :log

  def initialize
    @log = []
  end

  def activity type, value, balance
    @log << {date: date,
             type: type,
             value: value,
             balance: balance
            }
  end

  def date
    Time.now.strftime("%d/%m/%y")
  end
end
