require 'spec_helper'

describe Transactions do
  transactions = Transactions.new
  time = Time.now.strftime("%d/%m/%y")
  balance = 10
  deposit = 10

  it "has an activity log" do
    expect(transactions.log).to eq([])
  end
  it "should record the type and value of transaction" do
    transactions.activity('type', deposit, balance)
    expect(transactions.log).to include({:date => time,
                                         :type => 'type',
                                         :value => deposit,
                                         :balance => balance})
  end
end
