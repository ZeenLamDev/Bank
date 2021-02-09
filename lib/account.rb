# frozen_string_literal: true

require_relative 'statement'
require 'date'

class Account
  attr_reader :balance, :transactions

  def deposit(date, amount)
    date = DateTime.strptime(date, '%d-%m-%Y')
    date = date.strftime('%-d/%-m/%Y')
    @balance += amount
    @transactions << ("#{date} || #{'%.2f' % amount} || || #{format('%.2f', @balance)}")
  end

  def withdraw(date, amount)
    date = DateTime.strptime(date, '%d-%m-%Y')
    date = date.strftime('%-d/%-m/%Y')
    @balance -= amount
    @transactions << ("#{date} || || #{'%.2f' % amount} || #{format('%.2f', @balance)}")
  end

  def print_statement
    @statement.print(@transactions)
  end

  private

  def initialize(statement = Statement.new)
    @balance = 0
    @transactions = []
    @statement = statement
  end
end
