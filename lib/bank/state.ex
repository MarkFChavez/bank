defmodule Bank.State do

  defstruct(
    account_balance: 0,
    state: :active,
    deposit_count: 0,
    withdrawal_count: 0,
  )
  
end
