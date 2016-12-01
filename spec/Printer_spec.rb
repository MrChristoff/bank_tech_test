require 'spec_helper'

describe Printer do
  account = account
  printer = Printer.new(account)

  it "prints a headder" do
    expect { (printer.headder) }.to output("date       || credit || debit   || balance\n").to_stdout
  end

end
