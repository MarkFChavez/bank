defmodule Bank.Operator do

  alias Bank.State

  def start() do
    start(10_000)
  end

  def start(amount) do
    %State{ account_balance: amount }
  end

  def withdraw(bank, amount) when amount < 0 do
    IO.puts("You cannot withdraw a negative amount.")
    bank
  end

  def withdraw(bank, amount) do
    %State{ bank | account_balance: bank.account_balance - amount }
  end

  def deposit(bank, amount) do
    bank
  end

end
