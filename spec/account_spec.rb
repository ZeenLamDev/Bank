# frozen_string_literal: true

require './lib/account'

describe Account do
  subject(:account) { Account.new }

  describe 'Create Account' do
    it 'creates an account with zero balance' do
      expect(subject.balance).to eq 0
    end
  end

  describe 'Deposit money into account' do
    it 'allows user to deposit money' do
      subject.deposit('9-02-2021', 1000)
      expect(subject.balance).to eq 1000
    end
  end

  describe 'Withdraw money from account' do
    it 'allows user to withdraw money' do
      subject.deposit('9-02-2021', 1000)
      subject.withdraw('10-02-2021', 250)
      expect(subject.balance).to eq 750
    end
  end

  describe 'Print statement' do
    it 'allows user to print statement' do
      subject.deposit('9-02-2021', 1000)
      subject.withdraw('10-02-2021', 250)
      statement = <<~STATEMENT
        date || credit || debit || balance
        10/2/2021 || || 250.00 || 750.00
        9/2/2021 || 1000.00 || || 1000.00
      STATEMENT
      expect { account.print_statement }.to output(statement).to_stdout
    end
  end

  describe 'Transactions' do
    it 'records transactions of the user' do
      subject.deposit('9-02-2021', 1000)
      subject.withdraw('10-02-2021', 500)
      expect(subject.transactions).to eq(['9/2/2021 || 1000.00 || || 1000.00', '10/2/2021 || || 500.00 || 500.00'])
    end
  end
end
