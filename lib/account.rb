class Account
  attr_reader :balance

  def deposit(amount)
    @balance += amount
  end

  private
  def initialize
    @balance = 0

  end
end