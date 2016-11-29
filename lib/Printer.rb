class Printer

  def initialize(account)
    @account = account
  end

  def headder
    print "date       || credit || debit   || balance"
  end

  def accountLog
    @account.activityLog.log
  end

end
