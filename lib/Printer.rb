class Printer

  def initialize(account)
    @account = account
  end

  def headder
    puts "date       || credit || debit   || balance"
  end

  def accountLog
    @account.activityLog.log
  end

  def spikeToPrint
    headder
    accountLog.reverse.each do |trans|
      if trans[:type] == "deposit"
        puts "#{trans[:date]} " + "||" + " #{trans[:value]}" + "||" + "         " + "||" + " #{trans[:balance]}"
      else
        puts "#{trans[:date]} " + "||" + "        " + "||" + " #{trans[:value]}  " + "||" + " #{trans[:balance]}"
      end
    end
  end

end
