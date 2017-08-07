defmodule Bank.Deposit do

  alias Bank.State

  def do_deposit(bank, amount) when amount < 0 do
    IO.puts("You cannot deposit a negative amount.")
    bank
  end

  def do_deposit(bank, amount) do
    %State{ bank | account_balance: bank.account_balance + amount }
  end

end
