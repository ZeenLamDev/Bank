# Bank

User Stories

```
As a customer
So i could have an account
I would like to be able to open an account
```
```
As a customer
So i can keep my money safe
I would like to be able to deposit money
```
```
As a customer
So i could spend my money
I would like to be able to withdraw money
```
```
As a customer
So i could see how much money i have
I would like to check my balance
```
```
As a customer
So i could keep track of my spending
I would like to see my transaction dates
```

## Objectives

### Requirements
You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.) Deposits, withdrawal. Account statement (date, amount, balance) printing. Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance Criteria

Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## Installation
- Clone Repository
- run ```bundle install```
- run in terminal ```irb -r ./lib/account```
- create an account ``` ex = Account.new```
- Deposit money with date as string followed by amount as integer ``` ex.deposit('9-02-2021', 50)```
- Withdraw money ``` ex.withdraw('10-02-2021, 10)```
- View statement ``` ex.print_statement```