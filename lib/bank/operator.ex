defmodule Bank.Operator do

  alias Bank.State

  def start() do
    start(10_000)
  end

  def start(amount) do
    %State{ account_balance: amount }
  end

  ################ WITHDRAW ################
  def withdraw(bank, amount) when amount < 0 do
    IO.puts("You cannot withdraw a negative amount.")
    bank
  end

  def withdraw(bank = %{ account_balance: balance }, amount) when amount > balance do
    IO.puts("You cannot withdraw an amount greater than your balance.")
    bank
  end

  def withdraw(bank, amount) do
    %State{ bank | account_balance: bank.account_balance - amount }
  end

  ################ DEPOSIT ################
  def deposit(bank, amount) when amount < 0 do
    IO.puts("You cannot deposit a negative amount.")
    bank
  end

  def deposit(bank, amount) do
    %State{ bank | account_balance: bank.account_balance + amount }
  end

end
