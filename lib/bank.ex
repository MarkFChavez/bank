defmodule Bank do

  alias Bank.Operator

  # DEFAULT ACCOUNT BALANCE = 10,000
  defdelegate start(), to: Operator
  defdelegate start(amount), to: Operator

  defdelegate withdraw(bank_state, amount), to: Operator
  defdelegate deposit(bank_state, amount), to: Operator

end
