require './lib/account'

describe Account do
  subject(:account) { Account.new }

  describe 'Create Account' do
    it 'creates an account with zero balance' do
      expect(subject.balance).to eq(0)
    end
  end
end