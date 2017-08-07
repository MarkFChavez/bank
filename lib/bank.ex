defmodule Bank do

  alias Bank.Operator
  alias Bank.Withdraw
  alias Bank.Deposit

  defdelegate start(), to: Operator
  defdelegate start(amount), to: Operator

  defdelegate do_withdraw(bank, amount), to: Withdraw
  defdelegate do_deposit(bank, amount), to: Deposit

end
