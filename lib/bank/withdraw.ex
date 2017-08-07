defmodule Bank.Withdraw do

  alias Bank.State

  def do_withdraw(bank, amount) when amount < 0 do
    IO.puts("You cannot withdraw a negative amount.")
    exit(:normal)
  end

  def do_withdraw(bank = %{ account_balance: balance }, amount) when amount > balance do
    IO.puts("You cannot withdraw an amount greater than your balance.")
    exit(:normal)
  end

  def do_withdraw(bank, amount) do
    %State{ bank | account_balance: bank.account_balance - amount }
  end

end
