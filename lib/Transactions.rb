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

  def time
    Time.now
  end

  def date
    time.strftime("%d/%m/%Y")
  end
end
