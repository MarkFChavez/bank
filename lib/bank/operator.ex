defmodule Bank.Operator do

  alias Bank.State

  def start() do
    %State{ account_balance: 10_000 }
  end

  def start(amount) do
    %State{ account_balance: amount }
  end

end
