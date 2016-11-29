require 'spec_helper'

describe "Account" do
  account = Account.new
  it "has a balace of 0.00" do
    expect(account.balance).to be(0.00)
  end
  it "should increase the balnce" do
    expect {account.deposit(10)}.to change {account.balance}.from(0.00).to(10.00)
  end
  it "should decrease the balnce" do
    expect {account.debit(10)}.to change {account.balance}.from(10.00).to(0.00)
  end

end
