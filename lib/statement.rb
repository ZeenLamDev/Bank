# frozen_string_literal: true

require_relative 'account'

class Statement
  def print(transactions)
    puts 'date || credit || debit || balance'
    transactions.reverse.each do |x|
      puts x
    end
  end
end
