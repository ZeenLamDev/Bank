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
      subject.deposit(1000)
      expect(subject.balance).to eq 1000
    end
  end

  describe 'Withdraw money from account' do
    it 'allows user to withdraw money' do
      subject.withdraw(250)
      expect(subject.balance).to eq 750
    end
  end

end